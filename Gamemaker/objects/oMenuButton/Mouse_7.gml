/// @description Place the object
if(menuParent.menuOpen){
  obj = instance_create_layer(mouse_x, mouse_y, "Instances", oGhostConstructable);
  with(obj){
    object = other.object;
    menuParent = other.menuParent;
    sprite_index = other.sprite;
  }
  menuParent.menuOpen = false;
}