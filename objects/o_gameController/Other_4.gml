/// @description Insert description here
// You can write your code in this editor
if(room == bad_day) {
	audio_stop_sound(snd_normal_day);
	audio_play_sound(snd_bad_day, 1, true);
	audio_play_sound(snd_rain_inside, 1, true);
}
else if(room == main_menu || room == read_room) {
	audio_stop_all();
}
else if(room == normal_day) {
	audio_play_sound(snd_normal_day, 1, true);	
}