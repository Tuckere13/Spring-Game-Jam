


//instance_create_layer(x, y, "Instances", obj_attack)

if (can_melee) {
	can_melee = false;
	alarm[2] = 15;
if look_dir = "left" { 
	//image_index = spr_player;
    instance_create_layer(x - 35, y, "Instances",  obj_attack);
	obj_attack.offset_x = -35;
	obj_attack.image_xscale = -1;
} 
if look_dir = "right" { 
	//image_index = spr_player;
	instance_create_layer(x + 35, y, "Instances",  obj_attack);
	obj_attack.offset_x = 35;
	obj_attack.image_xscale = 1;
	}
if look_dir = "down" {
	//image_index = spr_player;
	instance_create_layer(x, y + 35, "Instances",  obj_attack);
	obj_attack.offset_y = 35;
	obj_attack.image_xscale = 1;
}
if look_dir = "up" {
	//image_index = spr_player_back;
	instance_create_layer(x, y - 35, "Instances",  obj_attack);
	obj_attack.offset_y =  -35;
	obj_attack.image_yscale = -1;
}
}