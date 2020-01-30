use euclid::{Transform2D, Vector2D, Angle};
use std::intrinsics::transmute;
use std::os::raw::c_void;

#[no_mangle]
pub fn euclid_transform2d_f32_load_identity(_transform_ptr: *mut f32) {
    with_transform(_transform_ptr, |_transform| {
        transform_copy(Transform2D::<f32, c_void, c_void>::identity(), _transform_ptr);
    });
}

#[no_mangle]
pub fn euclid_transform2d_f32_post_translate(_transform_ptr: *mut f32, x: f32, y: f32) {
    with_transform(_transform_ptr, |transform| {
        let new_transform = transform.post_translate(Vector2D::new(x, y));
        transform_copy(new_transform, _transform_ptr);
    });
}

#[no_mangle]
pub fn euclid_transform2d_f32_post_scale(_transform_ptr: *mut f32, x: f32, y: f32) {
    with_transform(_transform_ptr, |transform| {
        let new_transform = transform.post_scale(x, y);
        transform_copy(new_transform, _transform_ptr);
    });
}

#[no_mangle]
pub fn euclid_transform2d_f32_post_rotate(_transform_ptr: *mut f32, radians: f32) {
    with_transform(_transform_ptr, |transform| {
        let new_transform = transform.post_rotate(Angle::radians(radians));
        transform_copy(new_transform, _transform_ptr);
    });
}

#[no_mangle]
pub fn euclid_transform2d_f32_pre_translate(_transform_ptr: *mut f32, x: f32, y: f32) {
    with_transform(_transform_ptr, |transform| {
        let new_transform = transform.pre_translate(Vector2D::new(x, y));
        transform_copy(new_transform, _transform_ptr);
    });
}

#[no_mangle]
pub fn euclid_transform2d_f32_pre_scale(_transform_ptr: *mut f32, x: f32, y: f32) {
    with_transform(_transform_ptr, |transform| {
        let new_transform = transform.pre_scale(x, y);
        transform_copy(new_transform, _transform_ptr);
    });
}

#[no_mangle]
pub fn euclid_transform2d_f32_pre_rotate(_transform_ptr: *mut f32, radians: f32) {
    with_transform(_transform_ptr, |transform| {
        let new_transform = transform.pre_rotate(Angle::radians(radians));
        transform_copy(new_transform, _transform_ptr);
    });
}


#[inline]
fn with_transform<Block>(_ptr: *mut f32, block: Block)
where
    Block: FnOnce(&mut Transform2D<f32, c_void, c_void>),
{
    let transform: &mut Transform2D<f32, c_void, c_void> = unsafe { transmute(_ptr) };
    block(transform);
}

#[inline]
fn transform_copy(_src: Transform2D<f32, c_void, c_void>, dst: *mut f32) {
    unsafe {
        std::ptr::copy_nonoverlapping(
            &_src as *const Transform2D<f32, c_void, c_void>,
            dst as *mut Transform2D<f32, c_void, c_void>,
            1,
        )
    };
}
