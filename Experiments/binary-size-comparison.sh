results_dir=${1:-"DREDD_EVAL/Experiments/results/binary_size"}

pushd "$DREDD_EVAL"/Experiments

for opt_level in "O0" "O1" "O2" "O3"; do
  for extension in "" "-instrumented"; do
    ls -l "./spirv-tools$extension-$opt_level/build/tools/spirv-opt" >> "$results_dir/spirv-tools$extension-$opt_level.txt"
    ls -l "./tint$extension-$opt_level/out/Debug/tint" >> "$results_dir/tint$extension-$opt_level.txt"
    for binutils_executable in "readelf" "objdump" "strings" "nm-new" "cxxfilt" "size"; do
      echo "$binutils_executable size:" >> "$results_dir/binutils$extension-$opt_level.txt"
      ls -l "./binutils$extension-$opt_level/objdir/binutils/$binutils_executable" >> "$results_dir/binutils$extension-$opt_level.txt"
    done
  done
done

popd
