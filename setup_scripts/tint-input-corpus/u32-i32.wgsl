@compute @workgroup_size(1)
fn f() {
    const a : u32 = u32(1073757184u);
    let b : i32 = bitcast<i32>(a);
}
