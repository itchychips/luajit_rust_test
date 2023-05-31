#[no_mangle]
pub extern "C" fn add(left: libc::c_int, right: libc::c_int) -> libc::c_int {
    left + right
}
