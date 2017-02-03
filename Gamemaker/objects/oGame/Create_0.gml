/// @description Initialize the game
randomize();
/// Initialize the game object
draw_set_color(c_white);

room_goto_next();

audio_play_sound(musBackground, 1.0, true);

//Global Variables
global.GUILayer = -10000;
menu = instance_create_depth(0, 0, global.GUILayer, oMenu);