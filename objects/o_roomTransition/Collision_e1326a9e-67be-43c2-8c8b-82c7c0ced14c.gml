/// @description Insert description here
// You can write your code in this editor
if(!collided) {
	collided = true;
	show_debug_message("Enetered collider");
	instance_create_depth(0, 0, -9999, o_fade);
}
