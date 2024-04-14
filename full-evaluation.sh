set -e
set -u
set -x

cd Evaluation

# Evaluate binutils
for f in objdir/binutils/cxxfilt objdir/binutils/nm-new objdir/binutils/objdump objdir/binutils/readelf objdir/binutils/size objdir/binutils/strings
do
	../evaluate.sh "10m" binutils "$f"
done

# Evaluate coreutils - ls 
../evaluate.sh "10m" coreutils src/ls

