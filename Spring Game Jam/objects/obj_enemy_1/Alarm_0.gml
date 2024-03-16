function stringSearch(dir){
	for (var i = 0; i < string_length(dir_string) + 1; i += 1){
		if (string_char_at(dir_string,i) == dir){
			var _inst = instance_create_layer(x + 16, y + 16,"bullet", obj_bullet);//struct ={bullet_dir: dir});
			//layer_instance_get_instance(_inst).bullet_dir = dir;
			_inst.bullet_dir = dir;
			_bullet_array[array_index] = _inst
			array_index += 1
			}
		if (string_char_at(dir_string,i) + string_char_at(dir_string,i+1) == dir){
			var _inst = instance_create_layer(x + 16, y + 16,"bullet", obj_bullet);//struct ={bullet_dir: dir});
			//layer_instance_get_instance(_inst).bullet_dir = dir;
			_inst.bullet_dir = dir;
			_bullet_array[array_index] = _inst
			array_index += 1
			}
	}
}
show_debug_message("dfsdfsdfsd");

var _bullet_array = array_create(16);

stringSearch("N");
stringSearch("E");
stringSearch("S");
stringSearch("W");
stringSearch("ne");
stringSearch("nw");
stringSearch("se");
stringSearch("sw");

can_attack = true;




