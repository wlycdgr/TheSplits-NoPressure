/// @description Insert description here
// You can write your code in this editor
var d1;
var d2;
for (var i = 0; i < distractions_count; i++){
	d1 = distractions[distractions_lines[i, 0]];
	d2 = distractions[distractions_lines[i, 1]];
	
	var _list = ds_list_create();
	var _num = collision_line_list(d1.x, d1.y, d2.x, d2.y, obj_Bullet_Avatar, true, true, _list, false);
	if (_num > 0) {
		for (var j = 0; j < _num; j++;){
			var bullet = _list[| j];
			
			if (bullet.dead) continue;
			
			if (bullet.already_collided_with_line[i]) continue;
			
			distractions_lines_highlighted[i] = !distractions_lines_highlighted[i];
			
			bullet.already_collided_with_line[i] = true;
		}
	}
	ds_list_destroy(_list);
}

for (var i = 0; i < distractions_count; i++){
	distractions_lines_color[i] = distractions_lines_highlighted[i] ? 
		highlighted_color :
		regular_color;
}
		