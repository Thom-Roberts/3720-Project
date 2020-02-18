// scr_text("Text", speed, x, y);

txt = instance_create_depth(argument2, argument3, 1, o_text);
show_debug_message("Created instance with id of: " + string(txt));
global.activeTextBox = txt;
with(txt) {
	padding = 16;
	max_length = view_wport[0];
	text = argument0;
	spd = argument1;
	font = fnt;
	
	text_length = string_length(text);
	font_size = font_get_size(font);
	
	text_width = string_width_ext(text, font_size+(font_size/2), max_length);
	text_height = string_height_ext(text, font_size+(font_size/2), max_length);

	boxwidth = text_width + (padding * 2);
	boxheight = text_height + (padding * 2);
}