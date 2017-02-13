/// @description Check for UI Events
if(oInput.kBuildMenuPress){
  menu.menuOpen = !menu.menuOpen;
}

//Reset GUI height and width
display_set_gui_size(window_get_width(), window_get_height());