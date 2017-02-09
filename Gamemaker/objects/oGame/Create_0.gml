/// @description Initialize the game
randomize();
/// Initialize the game object
draw_set_color(c_white);

audio_play_sound(musBackground, 1.0, true);

//Global Variables
global.GUILayer = -10000;

window_set_size(1280, 960);
window_set_position(200, 50);

instance_create_layer(0, 0, "Instances", oCamera);
instance_create_layer(0, 0, "Instances", oInput);