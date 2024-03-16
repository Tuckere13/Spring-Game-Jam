


if (can_attack){
	alarm[0] = 100;
	can_attack = false;
	if(distance_to_object(obj_player) < 400){

		boss1_shoot(x, y);
		
	
	}
	
	
}


if (collision_rectangle(x-400, y-400, x, y+400, obj_player, false, false)){
	image_xscale = 1;
}
if (collision_rectangle(x, y-400, x+400, y+400, obj_player, false, false)){
	image_xscale = -1;
}
