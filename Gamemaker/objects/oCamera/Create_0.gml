/// @description Initialize the camera
audio_listener_position(0, 0, 0);
audio_listener_orientation(0, 1000, 0, 0, 0, 1);

cameraWidth = 512;
cameraHeight = 384;
cameraZoom = 1;

panX = 0;
panY = 0;

//Initialize the cameras and view
view_enabled = true;
view_set_visible(0, true);
view_set_wport(0, 640);
view_set_hport(0, 480);

//Camera creation
viewCamera = camera_create_view(0, 0, cameraWidth, cameraHeight, 0, -1, -1, -1, 32, 32);
view_set_camera(0, viewCamera);