/// @description Insert description here
// You can write your code in this editor
a = clamp(a + (fade * 0.01),0,1);

if(a == 1) {
	room_goto_next();
	fade = -1;
}

if(a == 0 && fade == -1) {
	global.playerCanMove = true;
	instance_destroy();
}

draw_set_color(c_black);
draw_set_alpha(a);
draw_rectangle(
	0,
	0,
	room_width,
	room_height,
	0
);

draw_set_alpha(1);