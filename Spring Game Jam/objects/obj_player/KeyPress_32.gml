


//instance_create_layer(x, y, "Instances", obj_attack)

 
    if image_xscale == 1 { 
        instance_create_layer(x + sprite_width, y, "Instances",  obj_attack);
		obj_attack.image_xscale =-1;
    } 
	if image_xscale == -1 { 
        instance_create_layer(x - sprite_width, y, "Instances",  obj_attack);
		obj_attack.image_xscale = 1;
    }
	//if sprite_index = 