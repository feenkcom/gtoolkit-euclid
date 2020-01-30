use std::intrinsics::transmute;
use euclid::{Transform2D, Vector2D};
use std::os::raw::c_void;

#[no_mangle]
pub fn euclid_transform2d_f32_array_post_translate(
    _ptr: *mut f32,
    x: f32,
    y: f32
) {
    // this is some very unsafe rust! We assume that the memory for the transform is already allocated and initialized by the caller
    let transform_ptr: *mut Transform2D<f32, c_void, c_void> = unsafe { transmute(_ptr) };
    let mut current_transform = unsafe { *transform_ptr };
    let new_transform = current_transform.post_translate(Vector2D::new(x, y));
    current_transform.clone_from(&new_transform)
}