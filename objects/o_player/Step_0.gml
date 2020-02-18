key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);

var move = key_right - key_left;

if(global.playerCanMove) {
	hsp = move * moveSpeed;

	// Prevent player from completely leaving the play space
	x = clamp(x + hsp, 0, room_width);	
}
