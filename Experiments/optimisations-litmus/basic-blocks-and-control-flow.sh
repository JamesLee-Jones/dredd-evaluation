set -e
set -u
set -x

export libCountIf="/home/jlj/dev/dredd-evalutation/utils/CountIf/build/libCountIf.so"

for program in *.cc; do
  name=$(basename $program .cc)
  
  mkdir -p $name
  # We need to disable O0 optnone to allow opt to be run latter.
  mkdir -p $name/O0
  clang++ -fpass-plugin=$libCountIf -Rpass=.* -S -O0 -Xclang -disable-O0-optnone -emit-llvm "$program" -o "$name/O0/$name-O0.ll" 2> "$name/O0/info.txt"

  # Compile at higher optimization levels.
  for opt in O1 O2 O3; do
    mkdir -p $name/$opt
    clang++ -fpass-plugin=$libCountIf -Rpass=.* -S "-$opt" -emit-llvm "$program" -o "$name/$opt/$name-$opt.ll" 2> "$name/$opt/info.txt"
  done
  
  # Analyse the various versions.
  for opt in O0 O1 O2 O3; do
    # Get the instruction counts.
    ~/dev/llvm-project/build/bin/opt -disable-output -passes="instcount" -stats "$name/$opt/$name-$opt.ll" -S &>> "$name/$opt/info.txt"

    # Generate the CFG.
    ~/dev/llvm-project/build/bin/opt -disable-output -passes="dot-cfg" -stats "$name/$opt/$name-$opt.ll" -S
    for f in .[^.]*.dot; do
      extension=$(echo "$f" | awk -F'.' '{print $2}')
      dot -Tpng "-o$name/$opt/$name-$opt-$extension.png" "$f"
    done

    # Clean up intermediate files.
    rm -rf .[^.]*.dot
  done
done
