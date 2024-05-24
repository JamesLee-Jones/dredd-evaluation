set -e
set -u
set -x

date=$(date "+%H:%M-%d-%m-%Y")

if [ ! -d "$DREDD_EVAL/Evaluation" ]; then
	exit 1;
fi

mkdir -p $DREDD_EVAL/results-backup
for dir in $DREDD_EVAL/Evaluation/*/
do
	dir=${dir%*/}  # Remove trailing "/"
	cp -r "$dir/results" "$DREDD_EVAL/results-backup/$(basename $dir)-$date"
done

