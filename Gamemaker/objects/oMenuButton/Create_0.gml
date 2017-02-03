/// @description Initialize the button
sprite = noone;
spriteID = 0;
object = noone;
menuParent = noone;
//x is the ix pos, y is the iy pos
ix = x;
iy = y;
guiScale = camera_get_view_width(view_get_camera(view_current))/window_get_width();
show_debug_message(guiScale);

image_xscale = guiScale;
image_yscale = guiScale;