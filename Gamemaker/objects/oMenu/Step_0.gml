/// @description Check for menu events
if(menuOpen){
  y = lerp(y, display_get_gui_height() - (num_elems_high*(item_button_size + spacing) + spacing*4), .1);
}else{
  //show_debug_message(y);
  y = lerp(y, display_get_gui_height(), .1);
}

//Check for button clicks
if(oInput.mLeftPress){
  if(menuOpen){
  //x + (item_button_size + spacing)*(ii%num_elems_wide) + spacing*2
    for(var i = 0; i < ds_list_size(ds_map_find_value(constructables, "ERA1")); ++i){
      var imx = x + (item_button_size + spacing)*(i%num_elems_wide) + spacing*2;
      var imy = y + (item_button_size + spacing)*floor(i/num_elems_wide) + spacing*2;
      if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 
                            imx, imy, imx + item_button_size, imy + item_button_size)){
          var obj = instance_create_layer(mouse_x, mouse_y, "Instances", oGhostConstructable);
          menuOpen = false;
          with(obj){
            var item = ds_list_find_value(ds_map_find_value(other.constructables, "ERA1"), i);
            object = asset_get_index(item[? "OBJECT"]);
            menuParent = other;
            sprite_index = asset_get_index(item[? "SPRITE"]);
          }
          break;
      }
    }
  }
}