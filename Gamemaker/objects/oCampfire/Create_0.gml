/// @description Initialize the campfire
image_index = 0;
curState = 1;
fire = audio_emitter_create();
audio_emitter_position(fire, x, y, 0);
audio_emitter_falloff(fire, 25, 50, 1);
audio_play_sound_on(fire, sfxIgnite, false, 0.25);
fireSound = audio_play_sound_on(fire, sfxCampfire, true, 0.25);