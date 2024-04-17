set -e
set -u
set -x

date=$(date "+%H:%M-%d-%m-%Y")

if [ ! -d "Evaluation" ]; then
	exit 1;
fi

mkdir -p results-backup
for dir in Evaluation/*/
do
	dir=${dir%*/}  # Remove trailing "/"
	cp -r "$dir/results" "./results-backup/$(basename $dir)-$date"
done

