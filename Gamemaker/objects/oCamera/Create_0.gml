/// @description Initialize the camera
audio_listener_position(x, y, 0);

cameraWidth = 640;
cameraHeight = 480;

panX = 0;
panY = 0;

//Initialize the cameras and view
view_enabled = true;
view_set_visible(0, true);
view_set_wport(0, cameraWidth);
view_set_hport(0, cameraHeight);

//Camera creation
viewCamera = camera_create_view(0, 0, 640, 480, 0, -1, -1, -1, 32, 32);
view_set_camera(0, viewCamera);