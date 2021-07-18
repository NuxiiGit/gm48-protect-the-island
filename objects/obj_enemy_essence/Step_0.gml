/// @desc Update essence path.
lifeTimer += lifeCounter;
if (lifeTimer > 1) {
    instance_destroy();
    exit;
}
var interp = 1 - lifeTimer;
var pos = lerp_bezier(interp, targetX, targetY, controlX, controlY, xstart, ystart);
x = pos[0];
y = pos[1];
image_angle += rot;