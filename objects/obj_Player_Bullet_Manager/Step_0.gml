/// @description Insert description here
// You can write your code in this editor
if (
	gamepad_button_check_pressed(0, avatar_fire_button) && 
	obj_Player_Avatar.fully_charged
){
	var avatar_bullet = instance_create_layer(
		obj_Player_Avatar.x, obj_Player_Avatar.y, 
		"Bullets", 
		obj_Bullet_Avatar
	);
	
	avatar_bullet.direction = point_direction(
		obj_Player_Avatar.x, obj_Player_Avatar.y, 
		obj_Player_Reticle.x, obj_Player_Reticle.y
	);
	
	obj_Player_Avatar.fully_charged = false;
	obj_Player_Avatar.radius = obj_Player_Avatar.min_radius;
}

if (
	gamepad_button_check_pressed(0, reticle_fire_button) &&
	obj_Player_Reticle.fully_charged
){
	var reticle_bullet = instance_create_layer(
		obj_Player_Reticle.x, obj_Player_Reticle.y, 
		"Bullets", 
		obj_Bullet_Reticle
	);
	
	reticle_bullet.direction = point_direction(
		obj_Player_Reticle.x, obj_Player_Reticle.y, 
		obj_Player_Avatar.x, obj_Player_Avatar.y
	);

	obj_Player_Reticle.fully_charged = false;
	obj_Player_Reticle.radius = obj_Player_Reticle.min_radius;
}