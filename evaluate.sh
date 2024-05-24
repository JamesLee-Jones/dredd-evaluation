set -e
set -u
set -x

project_name=$1
duration=$2
executable_location="$1/$3"
executable_flags=$4
input_type=$5
extension=$6
if [ ! -z "$6" ]; then
  extension="-e $extension"
fi
CPUS=$7

input_dir="testcase"
output_dir="results/$project_name/$(basename $executable_location)"

mkdir -p "$output_dir"

# Fuzz base
AFL_FINAL_SYNC=1 afl-fuzz -V $duration -i $input_dir -o $output_dir $extension -M Fuzzer1 -- $executable_location $executable_flags $input_type &

for ((i=2;i<=$CPUS;i++)); do
	afl-fuzz -V $duration -i $input_dir -o $output_dir $extension -S "Fuzzer$i" -- $executable_location $executable_flags $input_type > /dev/null 2>&1 &
done
wait

afl-cov --clang --cover-corpus -d $output_dir --coverage-cmd "$project_name-gcov/$executable_location $executable_flags $input_type" --code-dir "$project_name-gcov" > /dev/null 2>&1

