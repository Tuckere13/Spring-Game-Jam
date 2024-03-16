


//instance_create_layer(x, y, "Instances", obj_attack)

 
    if image_xscale == 1 { 
        instance_create_layer(x + sprite_width, y, "Instances",  obj_attack);
    } else { 
        instance_create_layer(x - sprite_width, y, "Instances",  obj_attack);
    }