/// @description Insert description here
// You can write your code in this editor
if (dead){
	instance_destroy();
}

if (!dead){
	// Letterbox collisions
	event_user(0);
}

if (!dead){
	// Sideline collisions
	event_user(1);
}