/// @description Step Events
//Zoom interpolation rate
#macro RATE .1

//Pan when middle is pressed
if(oInput.mMiddleDown){
  x = x + (panX - mouse_x);
  y = y + (panY - mouse_y);
}else{
  x = x + (3*(oInput.kRightDown - oInput.kLeftDown));
  y = y + (3*(oInput.kDownDown - oInput.kUpDown));
}
    
//Camera Zooming
//Move the zoom level based on mouse scrolling. Clamp the value so stuff doesn't get too silly.
cameraZoom = clamp(cameraZoom + (((mouse_wheel_down() - mouse_wheel_up())) * 0.1), 0.25, 5);

//Get current size
var view_w = camera_get_view_width(viewCamera);
var view_h = camera_get_view_height(viewCamera);

//Get new sizes by interpolating current and target zoomed size
var new_w = lerp(view_w, cameraZoom * cameraWidth, RATE);
var new_h = lerp(view_h, cameraZoom * cameraHeight, RATE);

//Apply the new size
camera_set_view_size(viewCamera, new_w, new_h);    

//Get the shift necessary to re-align the view.
x = x - (new_w - view_w) * 0.5;
y = y - (new_h - view_h) * 0.5;

x = clamp(x, 0, room_width - cameraWidth);
y = clamp(y, 0, room_height - cameraHeight);
camera_set_view_pos(viewCamera, x, y);

audio_listener_position(x + (cameraWidth/2), y + (cameraHeight/2), 0);