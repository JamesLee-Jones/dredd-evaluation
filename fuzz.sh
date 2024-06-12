set -e
set -u
set -x

project_name=$1
duration=$2
executable_location=$3
executable_flags=$4
input_type=$5
extension=$6
if [ ! -z "$6" ]; then
  extension="-e $extension"
fi
input_dir=$7
output_dir=$8
CPUS=$9

mkdir -p "$output_dir"

# Fuzz base
timeout $duration afl-fuzz -i $input_dir -o $output_dir $extension -M Fuzzer1 -- "$project_name/$executable_location" $executable_flags $input_type &

for ((i=2;i<=$CPUS;i++)); do
	timout $duration afl-fuzz -i $input_dir -o $output_dir $extension -S "Fuzzer$i" -- "$project_name/$executable_location" $executable_flags $input_type > /dev/null 2>&1 &
done
wait

