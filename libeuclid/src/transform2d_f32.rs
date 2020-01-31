use euclid::{Angle, Transform2D, Vector2D, Point2D, Rect};
use std::os::raw::c_void;

pub type TransformF32 = Transform2D<f32, c_void, c_void>;
pub type PointF32 = Point2D<f32, c_void>;
pub type VectorF32 = Vector2D<f32, c_void>;
pub type RectF32 = Rect<f32, c_void>;

#[no_mangle]
pub fn euclid_transform2d_f32_load_identity(transform: &mut TransformF32) {
    transform.clone_from(&TransformF32::identity());
}

#[no_mangle]
pub fn euclid_transform2d_f32_post_translate(transform: &mut TransformF32, x: f32, y: f32) {
    transform.clone_from(&transform.post_translate(Vector2D::new(x, y)));
}

#[no_mangle]
pub fn euclid_transform2d_f32_post_scale(transform: &mut TransformF32, x: f32, y: f32) {
    transform.clone_from(&transform.post_scale(x, y));
}

#[no_mangle]
pub fn euclid_transform2d_f32_post_rotate(transform: &mut TransformF32, radians: f32) {
    transform.clone_from(&transform.post_rotate(Angle::radians(radians)));
}

#[no_mangle]
pub fn euclid_transform2d_f32_pre_translate(transform: &mut TransformF32, x: f32, y: f32) {
    transform.clone_from(&transform.pre_translate(Vector2D::new(x, y)));
}

#[no_mangle]
pub fn euclid_transform2d_f32_pre_scale(transform: &mut TransformF32, x: f32, y: f32) {
    transform.clone_from(&transform.pre_scale(x, y));
}

#[no_mangle]
pub fn euclid_transform2d_f32_pre_rotate(transform: &mut TransformF32, radians: f32) {
    transform.clone_from(&transform.pre_rotate(Angle::radians(radians)));
}

#[no_mangle]
pub fn euclid_transform2d_f32_approx_eq(
    transform: &mut TransformF32,
    another_transform: &mut TransformF32,
) -> bool {
    transform.approx_eq(another_transform)
}

#[no_mangle]
pub fn euclid_transform2d_f32_transform_point(
    transform: &mut TransformF32,
    point: &mut PointF32
) {
    point.clone_from(&transform.transform_point(point.cast()));
}

#[no_mangle]
pub fn euclid_transform2d_f32_transform_vector(
    transform: &mut TransformF32,
    vector: &mut VectorF32
) {
    vector.clone_from(&transform.transform_vector(vector.cast()));
}

#[no_mangle]
pub fn euclid_transform2d_f32_transform_rect(
    transform: &mut TransformF32,
    rect: &mut RectF32
) {
    rect.clone_from(&transform.transform_rect(rect));
}