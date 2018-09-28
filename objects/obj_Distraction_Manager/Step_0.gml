/// @description Insert description here
// You can write your code in this editor
var d1;
var d2;
for (var i = 0; i < distractions_count; i++){
	d1 = distractions[distractions_lines[i, 0]];
	d2 = distractions[distractions_lines[i, 1]];
	
	if (collision_line(d1.x, d1.y, d2.x, d2.y, obj_Bullet_Avatar, false, true)){
		distractions_lines_highlighted[i] = true;
	}
}

for (var i = 0; i < distractions_count; i++){
	distractions_lines_color[i] = distractions_lines_highlighted[i] ? 
		highlighted_color :
		regular_color;
}
		