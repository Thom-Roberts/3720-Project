/// @description Insert description here
// Change the audio source, and stop the previous sound from continuing to play
// If it was not stopped, then it would loop indefinitly
if(!collided) {
	collided = true;
	if(o_player.walkSound == snd_footsteps) {
		show_debug_message("Changing footstep to rain");
		audio_stop_sound(snd_footsteps);
		audio_stop_sound(snd_rain_inside);
		audio_play_sound(snd_footsteps_rain, 1, true);
		audio_play_sound(snd_rain_outside, 1, true);
		o_player.walkSound = snd_footsteps_rain;
	}
	else if(o_player.walkSound == snd_footsteps_rain) {
		show_debug_message("Changing footstep to normal");
		audio_stop_sound(snd_footsteps_rain);
		audio_stop_sound(snd_rain_outside);
		audio_play_sound(snd_footsteps, 1, true);
		audio_play_sound(snd_rain_inside, 1, true);
		o_player.walkSound = snd_footsteps;
	}
}
