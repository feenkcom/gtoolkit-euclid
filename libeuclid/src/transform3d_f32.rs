use boxer::boxes::{ValueBox, ValueBoxPointer};
use euclid::Transform3D;
use std::os::raw::c_void;

#[no_mangle]
pub fn euclid_transform3d_f32_identity() -> *mut ValueBox<Transform3D<f32, c_void, c_void>> {
    ValueBox::new(Transform3D::<f32, c_void, c_void>::identity()).into_raw()
}

#[no_mangle]
pub fn euclid_transform3d_f32_row_major(
    m11: f32,
    m12: f32,
    m13: f32,
    m14: f32,
    m21: f32,
    m22: f32,
    m23: f32,
    m24: f32,
    m31: f32,
    m32: f32,
    m33: f32,
    m34: f32,
    m41: f32,
    m42: f32,
    m43: f32,
    m44: f32,
) -> *mut ValueBox<Transform3D<f32, c_void, c_void>> {
    ValueBox::new(Transform3D::<f32, c_void, c_void>::row_major(
        m11, m12, m13, m14, m21, m22, m23, m24, m31, m32, m33, m34, m41, m42, m43, m44,
    ))
    .into_raw()
}

#[no_mangle]
pub fn euclid_transform3d_f32_row_major_2d(
    m11: f32,
    m12: f32,
    m21: f32,
    m22: f32,
    m41: f32,
    m42: f32,
) -> *mut ValueBox<Transform3D<f32, c_void, c_void>> {
    ValueBox::new(Transform3D::<f32, c_void, c_void>::row_major_2d(
        m11, m12, m21, m22,  m41, m42
    ))
    .into_raw()
}

#[no_mangle]
pub fn euclid_transform_3d_f32_drop(_ptr: *mut ValueBox<Transform3D<f32, c_void, c_void>>) {
    _ptr.drop();
}