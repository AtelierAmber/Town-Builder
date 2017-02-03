/// @description Draw the menu background
if(menuOpen){
  draw_set_color(c_black);
  draw_set_alpha(0.75);
  draw_roundrect_ext(0, 50, menu_width, window_get_height() - 50, 25, 25, false);
  draw_set_alpha(1.0);
}