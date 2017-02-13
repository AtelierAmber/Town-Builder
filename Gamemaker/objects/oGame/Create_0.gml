/// @description Initialize the game
randomize();
/// Initialize the game object
draw_set_color(c_white);

audio_play_sound(musBackground, 1.0, true);

//window_set_fullscreen(true);
window_set_size(1280, 960);
window_set_position(200, 50);

instance_create_layer(0, 0, "Game_Objects", oCamera);
instance_create_layer(0, 0, "Game_Objects", oInput);
instance_create_layer(0, 0, "Game_Objects", oUI);