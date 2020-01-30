use euclid::{Transform3D, Vector3D};
use std::os::raw::c_void;
use std::intrinsics::transmute;

#[no_mangle]
pub fn euclid_transform3d_f32_load_identity(_transform_ptr: *mut f32) {
    with_transform(_transform_ptr, |_transform| {
        transform_copy(Transform3D::<f32, c_void, c_void>::identity(), _transform_ptr);
    });
}

#[no_mangle]
pub fn euclid_transform3d_f32_post_translate(_transform_ptr: *mut f32, x: f32, y: f32, z: f32) {
    with_transform(_transform_ptr, |transform| {
        let new_transform = transform.post_translate(Vector3D::new(x, y, z));
        transform_copy(new_transform, _transform_ptr);
    });
}

#[no_mangle]
pub fn euclid_transform3d_f32_post_scale(_transform_ptr: *mut f32, x: f32, y: f32, z: f32) {
    with_transform(_transform_ptr, |transform| {
        let new_transform = transform.post_scale(x, y, z);
        transform_copy(new_transform, _transform_ptr);
    });
}

#[no_mangle]
pub fn euclid_transform3d_f32_pre_translate(_transform_ptr: *mut f32, x: f32, y: f32, z: f32) {
    with_transform(_transform_ptr, |transform| {
        let new_transform = transform.pre_translate(Vector3D::new(x, y, z));
        transform_copy(new_transform, _transform_ptr);
    });
}

#[no_mangle]
pub fn euclid_transform3d_f32_pre_scale(_transform_ptr: *mut f32, x: f32, y: f32, z: f32) {
    with_transform(_transform_ptr, |transform| {
        let new_transform = transform.pre_scale(x, y, z);
        transform_copy(new_transform, _transform_ptr);
    });
}

#[inline]
fn with_transform<Block>(_ptr: *mut f32, block: Block)
where
    Block: FnOnce(&mut Transform3D<f32, c_void, c_void>),
{
    let transform: &mut Transform3D<f32, c_void, c_void> = unsafe { transmute(_ptr) };
    block(transform);
}

#[inline]
fn transform_copy(_src: Transform3D<f32, c_void, c_void>, dst: *mut f32) {
    unsafe {
        std::ptr::copy_nonoverlapping(
            &_src as *const Transform3D<f32, c_void, c_void>,
            dst as *mut Transform3D<f32, c_void, c_void>,
            1,
        )
    };
}