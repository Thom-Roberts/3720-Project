/// @description Insert description here
// Change the audio source, and stop the previous sound from continuing to play
// If it was not stopped, then it would loop indefinitly
if(o_player.walkSound == snd_footsteps) {
	audio_stop_sound(snd_footsteps);
	o_player.walkSound = snd_footsteps_rain;
	audio_play_sound(snd_footsteps_rain, 1, true);
}
else if(o_player.walkSound == snd_footsteps_rain) {
	audio_stop_sound(snd_footsteps_rain);
	o_player.walkSound = snd_footsteps;	
	audio_play_sound(snd_footsteps, 1, true);
}