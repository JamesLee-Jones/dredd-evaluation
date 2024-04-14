set -e
set -u
set -x

time=$1
program_root=$2
executable=$3

# Fuzz base
/home/jlj/dev/afl-cov/afl-cov -d "$2/results/base" --live --coverage-cmd "cat AFL_FILE | $2/$(basename $2)-gcov/$3" --code-dir "$2/$(basename $2)-gcov" &
timeout $1 /home/jlj/dev/AFLplusplus/afl-fuzz -i "$2/testcase" -o "$2/results/base" "$2/$(basename $2)/$3" &
wait

# Fuzz instrumented
/home/jlj/dev/afl-cov/afl-cov -d "$2/results/instrumented" --live --coverage-cmd "cat AFL_FILE | $2/$(basename $2)-gcov/$3" --code-dir "$2/$(basename $2)-gcov" &
timeout $1 /home/jlj/dev/AFLplusplus/afl-fuzz -i "$2/testcase" -o "$2/results/instrumented" "$2/$(basename $2)-instrumented/$3" &
wait

