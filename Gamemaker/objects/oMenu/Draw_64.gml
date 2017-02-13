/// @description Draw the menu
draw_set_color(c_black);
draw_set_alpha(0.75);
draw_roundrect_ext(x, y, num_elems_wide*(item_button_size + spacing) + spacing*4, window_get_height() + 25, 25, 25, false);
draw_set_alpha(1.0);
draw_set_color(c_white);
//Draw the buttons
for(var u = 0; u < 12; ++u){
  var ix = x + (item_button_size + spacing)*(u%num_elems_wide) + spacing*2;
  var iy = y + (item_button_size + spacing)*floor(u/num_elems_wide) + spacing*2;
  draw_rectangle(ix, iy, ix + item_button_size, iy + item_button_size, true);
}
for(var i = 0; i < ds_map_size(constructables); ++i){
  for(var ii = 0; ii < ds_list_size(ds_map_find_value(constructables, "ERA"+string(i+1))); ++ii){
    var item = ds_list_find_value(ds_map_find_value(constructables, "ERA"+string(i+1)), ii);
    
    var ix = x + (item_button_size + spacing)*(ii%num_elems_wide) + spacing*2;
    var iy = y + (item_button_size + spacing)*floor(ii/num_elems_wide) + spacing*2;
    var scale = (item_button_size / max(sprite_get_width(asset_get_index(item[? "SPRITE"])),
                                        sprite_get_height(asset_get_index(item[? "SPRITE"]))));
    var sprxPos = ix + (sprite_get_xoffset(asset_get_index(item[? "SPRITE"]))*scale);
    var spryPos = iy + (sprite_get_yoffset(asset_get_index(item[? "SPRITE"]))*scale);
    draw_sprite_ext(asset_get_index(item[? "SPRITE"]), item[? "SPRITE_ID"], sprxPos,
                                    spryPos, scale, scale, 0, c_white, 1.0);
  }
}