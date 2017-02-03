/// @description Initialize the menu
#macro OBJECT 0
#macro SPRITE 1
#macro SPRITE_ID 2

//Menu Vars
menuOpen = false;
constructables[0,OBJECT] = oCampfire;
constructables[0,SPRITE] = sCampfire;
constructables[0,SPRITE_ID] = 1;

constructables[1,OBJECT] = oTent;
constructables[1,SPRITE] = sTent;
constructables[1,SPRITE_ID] = 0;

constructables[2,OBJECT] = oChest;
constructables[2,SPRITE] = sSmallChest;
constructables[2,SPRITE_ID] = 0;

constructables[3,OBJECT] = oFence;
constructables[3,SPRITE] = sShortFence;
constructables[3,SPRITE_ID] = 0;

menu_width = 120;
num_elems_wide = 3;
spacing = (menu_width - (num_elems_wide * 30) - 8) / num_elems_wide;

for(var i = 0; i < array_height_2d(constructables); ++i){
  var button = instance_create_depth(i%num_elems_wide, floor(i/num_elems_wide), global.GUILayer, oMenuButton);
  with(button){
    sprite = other.constructables[i, SPRITE];
    object = other.constructables[i, OBJECT];
    spriteID = other.constructables[i, SPRITE_ID];
    menuParent = other;
    x = ((30 + menuParent.spacing)*ix) + 6;
    y = (iy*(30 + menuParent.spacing)) + 58;
  }
}