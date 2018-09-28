/// @description Insert description here
// You can write your code in this editor
wly_speed += wly_speed_increment;
if (wly_speed > wly_max_speed){
	wly_speed = wly_max_speed;
}

x += wly_direction * wly_speed;