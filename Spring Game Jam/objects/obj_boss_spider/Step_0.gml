
if (can_attack == true and spin == false) {
	alarm[0] = 120;
	can_attack = false;
}

else if (can_attack and spin){
	alarm[1] = 10;
	can_attack = false;
}

if (array_index >= 16){
	for (var i = 0; i < array_length(bullet_array); i += 1){
		instance_destroy(bullet_array[i]);
	}
	array_index = 0;
}


if (instance_exists(obj_player)){
	if (stagger)
	{
		hspeed = 0
		vspeed = 0
	}else {
		
	move_towards_point(obj_player.x, obj_player.y, move_speed)
	front_back = sign(y - obj_player.y)
	if (front_back < 0){
		image_angle = 0;
	}
	else if (front_back > 0) {
		image_angle = 180;
	}
	}
}
if (hp <= 0){
	instance_destroy(self)
} else{
	
}