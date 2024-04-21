set -e
set -u
set -x

time=$1
program_root=$2
executable=$3


# Fuzz base
AFL_FINAL_SYNC=1 timeout $1 afl-fuzz -i "$2/testcase" -o "$2/results/base/$(basename $3)" -M Fuzzer1 -- "$2/$(basename $2)/$3" $4 $5 &

for ((i=2;i<=$6;i++)); do
	timeout $1 afl-fuzz -i "$2/testcase" -o "$2/results/base/$(basename $3)" -S "Fuzzer$i" -- "$2/$(basename $2)/$3" $4 $5 > /dev/null 2>&1 &
done
wait

afl-cov --clang --cover-corpus -d "$2/results/base/$(basename $3)" --coverage-cmd "$2/$(basename $2)-gcov/$3 $4 $5" --code-dir "$2/$(basename $2)-gcov" > /dev/null 2>&1

# Fuzz instrumented

AFL_FINAL_SYNC=1 timeout $1 afl-fuzz -i "$2/testcase" -o "$2/results/instrumented/$(basename $3)" -M Fuzzer1 -- "$2/$(basename $2)-instrumented/$3" $4 $5 &

for ((i=2;i<=$6;i++)); do
	timeout $1 afl-fuzz -i "$2/testcase" -o "$2/results/instrumented/$(basename $3)" -S "Fuzzer$i" -- "$2/$(basename $2)-instrumented/$3" $4 $5 > /dev/null 2>&1 &
done
wait

afl-cov --clang --cover-corpus -d "$2/results/instrumented/$(basename $3)" --coverage-cmd "$2/$(basename $2)-gcov/$3 $4 $5" --code-dir "$2/$(basename $2)-gcov" > /dev/null 2>&1

