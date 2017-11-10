#version 3.7;
#include "colors.inc"
background {color Black}
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

#declare point_size_of_foo = 0.125123;

#include "foo.inc"
#declare model_offset = 0.6 * model_radius;

object {
  foo
  translate -model_center
  scale 0.4  rotate clock * 360 * y
  translate model_center
  translate -model_offset * y
  pigment {
    color rgb <1, 1, 1>
  }
}

object {
  foo
  translate -model_center
  scale 0.4  rotate 180 * y
  rotate 180 * z
  rotate -clock * 360 * y
  translate model_center
  translate model_offset * y
  pigment {
    color rgb <1, 1, 1>
  }
}

object {
  foo
  translate -model_center
  scale 0.4  rotate -90 * y
  rotate -90 * z
  rotate clock * 360 * x
  translate model_center
  translate -model_offset * x
  pigment {
    color rgb <1, 1, 1>
  }
}

object {
  foo
  translate -model_center
  scale 0.4  rotate 90 * y
  rotate 90 * z
  rotate -clock * 360 * x
  translate model_center
  translate model_offset * x
  pigment {
    color rgb <1, 1, 1>
  }
}

