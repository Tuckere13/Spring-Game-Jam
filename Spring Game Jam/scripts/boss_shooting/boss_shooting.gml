// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function boss1_shoot(_x, _y){
	
	projectiles = array_create(8);
	
	for (var _i; _i < 8; _i++){
		instance_create_layer(_x, _y, "Instances", obj_boss1_projectile);
	}	
	
	for (var _j = 0; _j < instance_number(obj_boss1_projectile); _j++;)
	{
		projectiles[_j] = instance_find(obj_boss1_projectile, _j);
	}
	
	for (var _g = 0; _g < array_length(projectiles); _g++;)
	{
		
	}
	
	
}