set -e
set -u
set -x

# $1 = Test duration
# $2 = Program name
# $3 = Executable location
# $4 = Executable flags
# $5 = Input type
# $6 = File extension
# $7 = CPUS

# If there is a file exention that should be used set the flag
extension=$6
if [ ! -z "$6" ]; then
  extension="-e $extension"
fi

# Fuzz base
AFL_FINAL_SYNC=1 timeout $1 afl-fuzz -i "$2/testcase" -o "$2/results/base/$(basename $3)" $extension -M Fuzzer1 -- "$2/$(basename $2)/$3" $4 $5 &

for ((i=2;i<=$7;i++)); do
	timeout $1 afl-fuzz -i "$2/testcase" -o "$2/results/base/$(basename $3)" -S "Fuzzer$i" $extension -- "$2/$(basename $2)/$3" $4 $5 > /dev/null 2>&1 &
done
wait

afl-cov --clang --cover-corpus -d "$2/results/base/$(basename $3)" --coverage-cmd "$2/$(basename $2)-gcov/$3 $4 $5" --code-dir "$2/$(basename $2)-gcov" > /dev/null 2>&1

# Fuzz instrumented

AFL_FINAL_SYNC=1 timeout $1 afl-fuzz -i "$2/testcase" -o "$2/results/instrumented/$(basename $3)" $extension -M Fuzzer1 -- "$2/$(basename $2)-instrumented/$3" $4 $5 &

for ((i=2;i<=$7;i++)); do
	timeout $1 afl-fuzz -i "$2/testcase" -o "$2/results/instrumented/$(basename $3)" -S "Fuzzer$i" $extension -- "$2/$(basename $2)-instrumented/$3" $4 $5 > /dev/null 2>&1 &
done
wait

afl-cov --clang --cover-corpus -d "$2/results/instrumented/$(basename $3)" --coverage-cmd "$2/$(basename $2)-gcov/$3 $4 $5" --code-dir "$2/$(basename $2)-gcov" > /dev/null 2>&1

