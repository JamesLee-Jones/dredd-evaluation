set -e
set -u
set -x

cd Evaluation

# Evaluate binutils
../evaluate.sh "2h" binutils objdir/binutils/objdump "-d" "@@" 10
../evaluate.sh "2h" binutils objdir/binutils/readelf "-a" "@@" 10
../evaluate.sh "2h" binutils objdir/binutils/nm-new "-C" "@@" 10
../evaluate.sh "2h" binutils objdir/binutils/cxxfilt "" "" 10
# These commands read from files
for f in objdir/binutils/size objdir/binutils/strings 
do
	../evaluate.sh "2h" binutils "$f" "" "@@" 10
done

# Evaluate coreutils - ls 
../evaluate.sh "2h" coreutils src/ls "" 10

