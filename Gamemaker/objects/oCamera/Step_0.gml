/// @description Clamp view
x = x + (3*(oInput.kRightPress - oInput.kLeftPress));
y = y + (3*(oInput.kDownPress - oInput.kUpPress));
    
x = clamp(x, 0, room_width - cameraWidth);
y = clamp(y, 0, room_height - cameraHeight);
    
camera_set_view_pos(viewCamera, x, y);

panX = mouse_x;
panY = mouse_y;
show_debug_message("P X (MX): " + string(panX) + " (" + + string(mouse_x) + ")");
show_debug_message("P Y (MY): " + string(panY) + " (" + + string(mouse_y) + ")");