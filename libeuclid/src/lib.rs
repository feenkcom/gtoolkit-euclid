extern crate euclid;

pub mod rectangle_f32;
pub mod transform2d_f32;
pub mod transform3d_f32;

#[no_mangle]
pub fn euclid_test() -> bool {
    true
}
