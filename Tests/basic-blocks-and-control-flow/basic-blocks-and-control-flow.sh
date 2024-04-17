set -e
set -u
set -x

clang++ -S -Xclang -disable-O0-optnone -emit-llvm "$1.cc" -o "$1.ll"
~/dev/llvm-project/build/bin/opt -disable-output -passes="instcount" -stats "$1.ll" -S &> "$1-info.txt"
~/dev/llvm-project/build/bin/opt -disable-output -passes="dot-cfg" -stats "$1.ll" -S
for f in .[^.]*.dot; do
  extension=$(echo "$f" | grep -oP '(?<=[.])\w+(?=[.])')
  dot -Tpng "-o$1-$extension.png" "$f"
done
rm .[^.]*.dot

