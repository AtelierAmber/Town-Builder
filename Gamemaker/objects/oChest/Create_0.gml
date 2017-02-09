/// @description Initialize the chest
open = false;

//Check for nearby chest
var cOther = collision_rectangle(x-11, y-7, x+(bbox_right - bbox_left)+10, y-4, oChest, false, true);
if(cOther != noone && cOther.sprite_index != sLargeChest){
  sprite_index = sLargeChest;
  x -= (x-cOther.x)/2;
  y -= (y-cOther.y)/2;
  with(cOther){
    //Copy contents over
    instance_destroy();
  }
}else{
  sprite_index = sSmallChest;
}
image_speed = 0;
image_index = 0;