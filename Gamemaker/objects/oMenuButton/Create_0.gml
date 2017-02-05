/// @description Initialize the button
sprite = noone;
spriteID = 0;
object = noone;
menuParent = noone;
//x is the itemx pos, y is the itemy pos
ix = x;
iy = y;
guiScale = oCamera.cameraWidth/window_get_width();

image_xscale = guiScale;
image_yscale = guiScale;
x *= guiScale;
y *= guiScale;