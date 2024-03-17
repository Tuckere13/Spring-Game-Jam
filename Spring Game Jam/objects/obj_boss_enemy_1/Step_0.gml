

/*
if (can_attack){
	alarm[0] = 100;
	can_attack = false;
	if(distance_to_object(obj_player) < 400){

		boss1_shoot(x, y);
		
	
	}
	
	
}
*/

if (collision_rectangle(x-400, y-400, x, y+400, obj_player, false, false)){
	image_xscale = 1;
}
if (collision_rectangle(x, y-400, x+400, y+400, obj_player, false, false)){
	image_xscale = -1;
}

if (hp > 0) {
	medusa_alive = true
} else {
	medusa_alive = false;
	instance_destroy();
}




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
