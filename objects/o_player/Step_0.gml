key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);

var move = key_right - key_left;

hsp = move * walksp;

x = x + hsp;