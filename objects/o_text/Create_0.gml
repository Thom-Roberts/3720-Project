alpha = 0; // fade onto screen
print = ""; // text we're going to print onto screen
time = 0; // how many characters have we printed?
depth = depth - instance_number(o_text); // don't want it to appear below

alarm[0] = room_speed * global.maxTextTime;