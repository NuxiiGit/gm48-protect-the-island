/// @desc Draw the end screen.
var width = display_get_gui_width();
var height = display_get_gui_height();
shader_set_effect_clip(0, 0, width, height);
var linear = min(fadeOut, 1);
var interp = easein(linear);
draw_sprite(spr_finish_bad, 0, width / 2, lerp(height + 1000, height, interp));
draw_sprite(spr_too_bad, 0, width / 2, lerp(height + 500, height - 100, interp));
shader_reset();