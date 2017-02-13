/// @description Initialize the menu

//Menu Vars
menuOpen = false;
constructables = loadJSON("Constructables.json");
currentEra = 1;

num_elems_wide = 5;
num_elems_high = 5;
item_button_size = 40;
spacing = 5;

for(var i = 0; i < ds_list_size(ds_map_find_value(constructables, "ERA1")); ++i){
  //Check for incorrect data
  var era = constructables[? "ERA1"];
  var build = era[| i];
  var object = asset_get_index(build[? "OBJECT"]);
  var sprite = asset_get_index(build[? "SPRITE"]);
  var spriteID = real(build[? "SPRITE_ID"]);
  var animated = real(build[? "ANIMATED"]);
  if(object == -1 || sprite == -1 || spriteID == -1 || animated == -1){
    show_error("Object " + string(i) + " has incorrect data.", true);
  }
}