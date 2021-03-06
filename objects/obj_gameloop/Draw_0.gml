/// @desc Draw the GUI.
draw_set_font(fnt_tiny);
draw_set_color(COLOUR_BLEND);
draw_set_valign(fa_top);
draw_set_halign(fa_center);
var linear = min(fadeOut * max(gameRestartTimer, 0), 1);
var interp = easein(linear);
draw_set_alpha(max(gameRestartTimer, 0));
draw_text_wonky(VIEW_CENTRE_X, lerp(VIEW_TOP + 10, VIEW_CENTRE_Y - 10, interp), "Score: " + string(global.score) + " (High: " + string(global.highscore) + ")");
draw_set_alpha(1.0);
if (interp > 0) {
    draw_set_font(fnt_script);
    draw_text_3d(lerp(VIEW_LEFT - 200, VIEW_CENTRE_X - 60, interp), VIEW_CENTRE_Y + 40, "Game", 10, COLOUR_BLEND, c_white);
    draw_text_3d(lerp(VIEW_RIGHT + 200, VIEW_CENTRE_X + 60, interp), VIEW_CENTRE_Y + 40, "Over", 10, COLOUR_BLEND, c_white);
}
if (fadeIn > 0.01 && fadeIn < 0.99) {
    draw_text_3d(
            lerp(VIEW_RIGHT + 200, VIEW_LEFT - 200, midslow(fadeIn)),
            VIEW_BOTTOM - 50,
            "Protect the Island",
            5, COLOUR_BLEND, CYellow.REKINDLED);
}