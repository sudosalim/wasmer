#[cfg(not(target_os = "windows"))]
#[macro_use]
extern crate failure;

#[cfg(not(target_os = "windows"))]
pub mod vfs;
