/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_enter)) {
	if(current_menu_index == 0) {
		instance_create_depth(0, 0, -9999, o_fade);
	}
	else if(current_menu_index == 1) {
		game_end();	
	}
}

var menu_move = keyboard_check_pressed(vk_up) - keyboard_check_pressed(vk_down);

next_menu_index = current_menu_index + menu_move;
// limit to stay in the bounds of the array
if (next_menu_index == num_buttons) {
	next_menu_index = 0;	
}
if(next_menu_index < 0) {
	next_menu_index = num_buttons - 1;	
}

current_menu_index = next_menu_index;