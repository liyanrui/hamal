#version 3.7;
#include "colors.inc"
background {color White}
global_settings {assumed_gamma 1.0}

#declare model_center = <8.315960, 8.015419, -6.846305>;
#declare model_radius = 12.512303;
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

#declare point_size_of_foo = 0.037537;
#declare control_point_size_of_foo = 0.037537;

#include "foo.inc"
object {
  foo
  pigment {
    color rgb <0.1, 0.2, 0.7>
  }
}

