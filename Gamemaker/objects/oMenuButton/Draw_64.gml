/// @description Draw the button
if(menuParent.menuOpen){
  //Draw the back boxes
  draw_set_color($505050);
  draw_roundrect(((30 + menuParent.spacing)*ix) + 6, (iy*(30 + menuParent.spacing)) + 58, 
                ((30 + menuParent.spacing)*ix) + 38, (iy*(30 + menuParent.spacing)) + 90, false)
  draw_set_color(c_white);
  //draw the icons
  var scale = (30 / max(sprite_get_width(sprite), sprite_get_height(sprite)));
  var xPos = (((30 + menuParent.spacing)*ix) + 8) + (sprite_get_xoffset(sprite)*scale);
  var yPos = ((iy*(30 + menuParent.spacing)) + 60) + (sprite_get_yoffset(sprite)*scale);
  draw_sprite_ext(sprite, spriteID, xPos, yPos, scale, scale, 0, c_white, 1.0);
}