#version 3.7;
#include "colors.inc"
background {color White}
global_settings {assumed_gamma 1.0}

#declare model_center = <0.000000, 0.000000, 0.000000>;
#declare model_radius = 2.953153;
#declare view_center = model_center;

#declare offset_coefficient = 2.000000;
camera {
  orthographic
  location -offset_coefficient * model_radius * z + model_center * z
  look_at <0, 0, 0>
  translate view_center
}

light_source {
  model_center + <0, 0, -10 * model_radius>
  color rgb <1.000000, 1.000000, 1.000000>
  shadowless
}

#declare joggle = 30;
#include "bar.inc"
object {
  bar
  rotate -15 * x
  rotate #if (clock < 0.51) clock #else (1 - clock) #end * joggle * y
  translate model_center
  pigment {
    color rgb <0.1, 0.2, 0.7>
  }
}

