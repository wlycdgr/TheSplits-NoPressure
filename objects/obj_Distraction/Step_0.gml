/// @description Collisions, growth
// You can write your code in this editor

if (target_r < r){
	r -= 0.1;
	if (r < min_r){
		r = min_r;
		target_r = 100;
	}
}
else {
	r += 0.01;
}

// Letterbox collisions
event_user(0);

// Sideline collisions
event_user(1);

// Avatar bullet collisions
event_user(2);

// Avatar collisions
event_user(3);

// Reticle collisions
event_user(4);

// Reticle bullet collisions
event_user(5);