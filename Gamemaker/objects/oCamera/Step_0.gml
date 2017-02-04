/// @description Step Events
if(oInput.mMiddleDown){
  x = x + (panX - mouse_x);
  y = y + (panY - mouse_y);
  show_debug_message("PX (MX): " + string(panX) + " (" + + string(mouse_x) + ")");
  show_debug_message("PY (MY): " + string(panY) + " (" + + string(mouse_y) + ")");
}else{
  x = x + (3*(oInput.kRightDown - oInput.kLeftDown));
  y = y + (3*(oInput.kDownDown - oInput.kUpDown));
}
x = clamp(x, 0, room_width - cameraWidth);
y = clamp(y, 0, room_height - cameraHeight);
    
camera_set_view_pos(viewCamera, x, y);

audio_listener_position(x + (cameraWidth/2), y + (cameraHeight/2), 0);