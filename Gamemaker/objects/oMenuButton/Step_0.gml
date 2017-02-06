/// @description Move in relation to the view pos
guiScale = oCamera.cameraWidth/window_get_width();

image_xscale = guiScale;
image_yscale = guiScale;
x = ((((30 + menuParent.spacing)*ix) + 6) * guiScale) + oCamera.x;
y = (((iy*(30 + menuParent.spacing)) + 58) * guiScale) + oCamera.y;