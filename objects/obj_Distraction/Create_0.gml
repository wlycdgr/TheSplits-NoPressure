/// @description Insert description here
// You can write your code in this editor

var total_speed = 4;
hspeed = 1 + random(2);
vspeed = total_speed - hspeed;
hspeed *= choose(-1, 1);
vspeed *= choose(-1, 1);

r = 12;
min_r = 12;
target_r = 100;

color = make_color_rgb(255, 57, 103); // FF enemy color 

//direction = random(359);
//speed = 4;

//color_hsv = random(255);
//color_hsv_change_per_frame = 1;
//color = make_color_hsv(color_hsv, 200, 200);
