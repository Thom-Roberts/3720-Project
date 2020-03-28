/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_main_menu);

draw_set_halign(fa_center);

var i = 0;
for(i = 0; i < num_buttons; i+=1) {
	draw_set_color(c_white);
	var text_length = string_length(buttons[i]);
	if(i == current_menu_index) {
		draw_set_color(c_red);
	}
	
	// Center's the text on the screen
	draw_text(room_width / 2 - text_length / 2, y + button_height * i, buttons[i]);	
}