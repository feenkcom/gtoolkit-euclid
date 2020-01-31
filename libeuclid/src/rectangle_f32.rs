use euclid::Rect;
use std::os::raw::c_void;

pub type RectF32 = Rect<f32, c_void>;

#[no_mangle]
pub fn euclid_rectangle_f32_get_left(rectangle: &mut RectF32) -> f32 {
    rectangle.origin.x
}

#[no_mangle]
pub fn euclid_rectangle_f32_get_top(rectangle: &mut RectF32) -> f32 {
    rectangle.origin.y
}

#[no_mangle]
pub fn euclid_rectangle_f32_get_width(rectangle: &mut RectF32) -> f32 {
    rectangle.size.width
}

#[no_mangle]
pub fn euclid_rectangle_f32_get_height(rectangle: &mut RectF32) -> f32 {
    rectangle.size.height
}
