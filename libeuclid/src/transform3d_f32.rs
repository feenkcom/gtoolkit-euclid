use euclid::{Angle, Transform3D, Vector3D};
use std::os::raw::c_void;

pub type TransformF32 = Transform3D<f32, c_void, c_void>;

#[no_mangle]
pub fn euclid_transform3d_f32_load_identity(transform: &mut TransformF32) {
    transform.clone_from(&TransformF32::identity());
}

#[no_mangle]
pub fn euclid_transform3d_f32_post_translate(transform: &mut TransformF32, x: f32, y: f32, z: f32) {
    transform.clone_from(&transform.post_translate(Vector3D::new(x, y, z)));
}

#[no_mangle]
pub fn euclid_transform3d_f32_post_scale(transform: &mut TransformF32, x: f32, y: f32, z: f32) {
    transform.clone_from(&transform.post_scale(x, y, z));
}

#[no_mangle]
pub fn euclid_transform3d_f32_post_rotate(
    transform: &mut TransformF32,
    x: f32,
    y: f32,
    z: f32,
    radians: f32,
) {
    transform.clone_from(&transform.post_rotate(x, y, z, Angle::radians(radians)));
}

#[no_mangle]
pub fn euclid_transform3d_f32_pre_translate(transform: &mut TransformF32, x: f32, y: f32, z: f32) {
    transform.clone_from(&transform.pre_translate(Vector3D::new(x, y, z)));
}

#[no_mangle]
pub fn euclid_transform3d_f32_pre_scale(transform: &mut TransformF32, x: f32, y: f32, z: f32) {
    transform.clone_from(&transform.pre_scale(x, y, z));
}

#[no_mangle]
pub fn euclid_transform3d_f32_pre_rotate(
    transform: &mut TransformF32,
    x: f32,
    y: f32,
    z: f32,
    radians: f32,
) {
    transform.clone_from(&transform.pre_rotate(x, y, z, Angle::radians(radians)));
}
