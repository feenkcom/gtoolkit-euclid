use std::os::raw::c_void;

pub type Transform2D = euclid::Transform2D<f32, c_void, c_void>;
pub type Transform3D = euclid::Transform3D<f32, c_void, c_void>;
pub type Point2D = euclid::Point2D<f32, c_void>;
pub type Vector2D = euclid::Vector2D<f32, c_void>;
pub type Rect = euclid::Rect<f32, c_void>;