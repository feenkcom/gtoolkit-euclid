use boxer::boxes::{ValueBox, ValueBoxPointer};
use euclid::Transform2D;
use std::os::raw::c_void;

#[no_mangle]
pub fn euclid_transform2d_f32_identity() -> *mut ValueBox<Transform2D<f32, c_void, c_void>> {
    ValueBox::new(Transform2D::<f32, c_void, c_void>::identity()).into_raw()
}

/// Create a transform2d by copying a given array of row major
#[no_mangle]
pub fn euclid_transform2d_f32_from_row_major_array(
    _ptr: *mut f32,
    _length: usize,
) -> *mut ValueBox<Transform2D<f32, c_void, c_void>> {
    let slice = unsafe { std::slice::from_raw_parts(_ptr, _length) };

    ValueBox::new(Transform2D::<f32, c_void, c_void>::row_major(
        slice[0], slice[1], slice[2], slice[3], slice[4], slice[5],
    ))
    .into_raw()
}

#[no_mangle]
pub fn euclid_transform2d_f32_drop(_ptr: *mut ValueBox<Transform2D<f32, c_void, c_void>>) {
    _ptr.drop();
}
