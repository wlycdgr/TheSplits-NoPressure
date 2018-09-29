/// @description Step -> Reticle bullet collisions

var bullet_count = instance_number(obj_Bullet_Reticle);
var bullet;

for (var i = 0; i < bullet_count; i++){
	bullet = instance_find(obj_Bullet_Reticle, i);
	
	if (bullet.dead) continue;
	
	if (point_distance(x, y, bullet.x, bullet.y) <= r + bullet.r){
		bullet.dead = true;
		
		target_r = min_r;
	}
}