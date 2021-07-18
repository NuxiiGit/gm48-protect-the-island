/// @desc Update essence path.
lifeTimer += lifeCounter;
if (lifeTimer > 1) {
    instance_destroy();
    exit;
}
var start_x = instance_exists(obj_wanda) ? obj_wanda.x : xstart;
var start_y = instance_exists(obj_wanda) ? obj_wanda.y : ystart;
var interp = lifeTimer;
var pos = lerp_bezier(interp, targetX, targetY, controlX, controlY, start_x, start_y);
x = pos[0];
y = pos[1];
image_angle += rot;