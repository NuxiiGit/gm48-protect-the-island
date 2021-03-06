/// @desc Draw island.
var angle = current_time * 0.1;
var dx = lengthdir_x(2, angle);
var dy = lengthdir_y(2, angle);
var xpos = floor(lerp(VIEW_RIGHT + 200, VIEW_CENTRE_X + dx, easein(fadeIn)));
var ypos = floor(lerp(VIEW_CENTRE_Y + dy, VIEW_BOTTOM + 200, easein(fadeOut)));
var tilt = 0;
if (global.hp < 10) {
    var range = (10 - global.hp) / 3;
    tilt = -10 * range;
    ypos += 10 * range;
    xpos += random_range(-range, range);
    ypos += random_range(-range, range);
}
draw_sprite_ext(spr_main_island, 0, xpos, ypos, 1, 1, tilt, c_white, 1);
draw_set_alpha(0.9);
draw_circle_colour(xpos, ypos, global.hp + 0.5 * dsin(angle), CBlue.DEEP_SKY, CYellow.REKINDLED, false);
draw_circle_colour(xpos, ypos, global.hp + 2 + 0.5 * dsin(angle), CBlue.DEEP_SKY, CYellow.REKINDLED, true);
draw_set_alpha(1);