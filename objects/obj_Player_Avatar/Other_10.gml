/// @description End Step -> Collide with Reticle

if (
	point_distance(x, y, obj_Player_Reticle.x, obj_Player_Reticle.y)
	<=
	radius + obj_Player_Reticle.radius
){
	dead = true;
	obj_Player_Reticle.dead = true;
}