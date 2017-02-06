/// @description Initialize the menu

//Menu Vars
menuOpen = false;
constructables = loadJSON("Constructables.json");
currentEra = 1;

menu_width = 120;
num_elems_wide = 3;

spacing = (menu_width - (num_elems_wide * 30) - 8) / num_elems_wide;
for(var i = 0; i < ds_list_size(ds_map_find_value(constructables, "ERA1")); ++i){
  var button = instance_create_depth(i%num_elems_wide, floor(i/num_elems_wide), global.GUILayer, oMenuButton);
  with(button){
    name = ds_map_find_value(ds_list_find_value(ds_map_find_value(other.constructables, "ERA1"), i), "NAME");
    object = asset_get_index(ds_map_find_value(ds_list_find_value(ds_map_find_value(other.constructables, "ERA1"), i), "OBJECT"));
    sprite = asset_get_index(ds_map_find_value(ds_list_find_value(ds_map_find_value(other.constructables, "ERA1"), i), "SPRITE"));
    spriteID = real(ds_map_find_value(ds_list_find_value(ds_map_find_value(other.constructables, "ERA1"), i), "SPRITE_ID"));
    if(object == -1 || sprite == -1 || spriteID == -1){
      show_error("Object " + string(i) + " has incorrect data.", true);
    }
    menuParent = other;
    x = ((30 + menuParent.spacing)*ix) + 6;
    y = (iy*(30 + menuParent.spacing)) + 58;
  }
}