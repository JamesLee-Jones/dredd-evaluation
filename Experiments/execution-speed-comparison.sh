results_dir=${1:-"$DREDD_EVAL/Experiments/results/compile_time"}

pushd "$DREDD_EVAL"/Experiments

for opt_level in "O0" "O1" "O2" "O3"; do
  for extension in "" "-instrumented"; do
    /usr/bin/time -p -a -o "$results_dir/spirv-tools$extension-$opt_level.txt" sh -c "for input_file in \"$DREDD_EVAL\"/third_party/spirv-tests/binary/*; do \"./spirv-tools$extension-$opt_level/build/tools/spirv-opt\" $input_file -o \"-\"; done"

    /usr/bin/time -p -a -o "$results_dir/tint$extension-$opt_level.txt" sh -c "for input_file in \"$DREDD_EVAL\"/third_party/wgsl-tests/*; do \"./tint$extension-$opt_level/out/Debug/tint\" $input_file; done"

    for binutils_executable in "readelf" "objdump" "strings" "nm-new" "cxxfilt" "size"; do
      ls -l "./binutils$extension-$opt_level/objdir/binutils/$binutils_executable" >> "$results_dir/binutils$extension-$opt_level.txt"
    done
  done
done

popd
