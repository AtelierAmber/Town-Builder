/// @description Insert description here
depth = -y;
x = (mouse_x + sprite_get_xoffset(sprite_index)) - (sprite_get_width(sprite_index) / 2);
y = (mouse_y + sprite_get_yoffset(sprite_index)) - (sprite_get_height(sprite_index) / 2);
if(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, oConstructable, false, false)){
  inObject = true;
}else inObject = false;
if(oInput.kEscapePress){
  menuParent.menuOpen = true;
  instance_destroy();
}