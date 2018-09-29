/// @description Insert description here
// You can write your code in this editor
max_radius = 10;
full_charge_radius = 10;
min_radius = 5;
radius = 5;
grow_per_frame = 0.3;

wly_speed = 20;

input_haxis = gp_axisrh;
input_vaxis = gp_axisrv;

x = room_width * (3 / 4);
y = room_height / 2 - 50;

event_inherited();