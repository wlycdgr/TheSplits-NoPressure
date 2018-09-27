/// @description Insert description here
// You can write your code in this editor
if (gamepad_button_check_pressed(0, avatar_fire_button)){
	var avatar_bullet = instance_create_layer(avatar.x, avatar.y, "Bullets", obj_Bullet_Avatar);
	avatar_bullet.direction = point_direction(avatar.x, avatar.y, reticle.x, reticle.y);
	avatar.radius = avatar.min_radius;
}

if (gamepad_button_check_pressed(0, reticle_fire_button)){
	var reticle_bullet = instance_create_layer(reticle.x, reticle.y, "Bullets", obj_Bullet_Reticle);
	reticle_bullet.direction = point_direction(reticle.x, reticle.y, avatar.x, avatar.y);
	reticle.radius = reticle.min_radius;
}