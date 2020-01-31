use euclid::{Angle};
use crate::types_f32::{Transform2D, Vector2D, Rect, Point2D, Transform3D};

#[no_mangle]
pub fn euclid_transform2d_f32_load_identity(transform: &mut Transform2D) {
    transform.clone_from(&Transform2D::identity());
}

#[no_mangle]
pub fn euclid_transform2d_f32_post_translate(transform: &mut Transform2D, x: f32, y: f32) {
    transform.clone_from(&transform.post_translate(Vector2D::new(x, y)));
}

#[no_mangle]
pub fn euclid_transform2d_f32_post_scale(transform: &mut Transform2D, x: f32, y: f32) {
    transform.clone_from(&transform.post_scale(x, y));
}

#[no_mangle]
pub fn euclid_transform2d_f32_post_rotate(transform: &mut Transform2D, radians: f32) {
    transform.clone_from(&transform.post_rotate(Angle::radians(radians)));
}

#[no_mangle]
pub fn euclid_transform2d_f32_pre_translate(transform: &mut Transform2D, x: f32, y: f32) {
    transform.clone_from(&transform.pre_translate(Vector2D::new(x, y)));
}

#[no_mangle]
pub fn euclid_transform2d_f32_pre_scale(transform: &mut Transform2D, x: f32, y: f32) {
    transform.clone_from(&transform.pre_scale(x, y));
}

#[no_mangle]
pub fn euclid_transform2d_f32_pre_rotate(transform: &mut Transform2D, radians: f32) {
    transform.clone_from(&transform.pre_rotate(Angle::radians(radians)));
}

#[no_mangle]
pub fn euclid_transform2d_f32_approx_eq(
    transform: &mut Transform2D,
    another_transform: &mut Transform2D,
) -> bool {
    transform.approx_eq(another_transform)
}

#[no_mangle]
pub fn euclid_transform2d_f32_transform_point(
    transform: &mut Transform2D,
    point: &mut Point2D
) {
    point.clone_from(&transform.transform_point(point.cast()));
}

#[no_mangle]
pub fn euclid_transform2d_f32_transform_vector(
    transform: &mut Transform2D,
    vector: &mut Vector2D
) {
    vector.clone_from(&transform.transform_vector(vector.cast()));
}

#[no_mangle]
pub fn euclid_transform2d_f32_transform_rect(
    transform: &mut Transform2D,
    rect: &mut Rect
) {
    rect.clone_from(&transform.transform_rect(rect));
}

#[no_mangle]
pub fn euclid_transform2d_f32_to_3d(
    transform_2d: &mut Transform2D,
    transform_3d: &mut Transform3D,
) {
    transform_3d.clone_from(&transform_2d.to_3d());
}