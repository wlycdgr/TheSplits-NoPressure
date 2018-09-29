/// @description Insert description here
// You can write your code in this editor
max_radius = 30;
min_radius = 10;
radius = 10;
grow_per_frame = 0.1;

wly_speed = 5;

input_haxis = gp_axislh;
input_vaxis = gp_axislv;

x = room_width * (1 / 4);
y = room_height / 2;

event_inherited();
