/// @description Light the fire
curState = !curState;
if(curState){
  audio_play_sound_on(fire, sfxIgnite, false, 0.25);
  fireSound = audio_play_sound_on(fire, sfxCampfire, true, 0.25);
}else{
  audio_stop_sound(fireSound);
}