// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function boss1_shoot(_x, _y){
	
	projectiles = array_create(8);
	
	
	instance_create_layer(_x, _y, "Instances", obj_boss1_projectile_up);
	instance_create_layer(_x, _y, "Instances", obj_boss1_projectile_upright);
	instance_create_layer(_x, _y, "Instances", obj_boss1_projectile_right);
	instance_create_layer(_x, _y, "Instances", obj_boss1_projectile_downright);
	instance_create_layer(_x, _y, "Instances", obj_boss1_projectile_down);
	instance_create_layer(_x, _y, "Instances", obj_boss1_projectile_downleft);
	instance_create_layer(_x, _y, "Instances", obj_boss1_projectile_left);
	instance_create_layer(_x, _y, "Instances", obj_boss1_projectile_upleft);
	
	
	
	
	
	
	
}