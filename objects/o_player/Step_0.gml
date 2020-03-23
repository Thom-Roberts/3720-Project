key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);

var move = key_right - key_left;

if(move != 0 && !walking) {
	walking = true;
	audio_play_sound(walkSound, 1, true);	
}
if(move == 0 && walking) {
	walking = false;
	audio_stop_sound(walkSound);	
}

if(global.playerCanMove) {
	hsp = move * moveSpeed;

	// Rotating sprite directions based on walking direction
	if(x + hsp < x) {
		image_xscale = -1;
	}
	if(x + hsp > x) {
		image_xscale = 1;
	}
	
	// Prevent player from completely leaving the play space
	x = clamp(x + hsp, 0, room_width);	
}
