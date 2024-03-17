image_blend = c_fuchsia;
array_index = 0

can_attack = true;

layer_create(4,"bullet");

bullet_array = array_create(16);

spin = false;

for (var i = 0; i < string_length(dir_string) + 1; i += 1){
	if (string_char_at(dir_string,i) == "X"){
			spin = true;
	}
}

function stringSearch(dir){
	for (var i = 0; i < string_length(dir_string) + 1; i += 1){
		if (string_char_at(dir_string,i) == dir){
			var _inst = instance_create_layer(x, y,"bullet", obj_web);//struct ={bullet_dir: dir});
			//layer_instance_get_instance(_inst).bullet_dir = dir;
			_inst.bullet_dir = dir;
			_bullet_array[array_index] = _inst;
			array_index += 1;
			}
		else if (string_char_at(dir_string,i) + string_char_at(dir_string,i+1) == dir){
			var _inst = instance_create_layer(x , y,"bullet", obj_web);//struct ={bullet_dir: dir});
			//layer_instance_get_instance(_inst).bullet_dir = dir;
			_inst.bullet_dir = dir;
			_bullet_array[array_index] = _inst;
			array_index += 1;
			}
	}
}


//basic enemy parent fo collisions
invinc = false
front_back = 1
stagger = false
if (global.midas){
	stagger_time *= 2
}