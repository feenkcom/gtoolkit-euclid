extern crate boxer;
extern crate euclid;

pub mod transform2d_f32;
pub mod transform2d_f32_array;
pub mod transform3d_f32;

#[no_mangle]
pub fn euclid_test() -> bool {
    true
}
