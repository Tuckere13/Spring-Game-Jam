randomize();
function curse_screen(){
	
	var _room_middle_x = room_width/2
	var _room_middle_y = room_height/2
	
	var _offset = -200
	
	instance_create_layer(_room_middle_x, _room_middle_y, "CurseScreen", obj_curse_choice_screen);
	
	var _current_choices = array_create(2);
	_current_choices = choose_curses();
	
	for(var _i = 0; _i < array_length(_current_choices); _i++){
		if (_current_choices[_i] = "Curse1"){
			instance_create_layer(_room_middle_x + _offset, _room_middle_y, "CurseOptions", obj_curse_choice1);
		}
		if (_current_choices[_i] = "Curse2"){
			instance_create_layer(_room_middle_x + _offset, _room_middle_y, "CurseOptions", obj_curse_choice2);
		}
		if (_current_choices[_i] = "Curse3"){
			instance_create_layer(_room_middle_x + _offset, _room_middle_y, "CurseOptions", obj_curse_choice3);
		}
		if (_current_choices[_i] = "Curse4"){
			instance_create_layer(_room_middle_x + _offset, _room_middle_y, "CurseOptions", obj_curse_choice4);
		}
		if (_current_choices[_i] = "Curse5"){
			instance_create_layer(_room_middle_x + _offset, _room_middle_y, "CurseOptions", obj_curse_choice5);
		}
		if (_current_choices[_i] = "Curse6"){
			instance_create_layer(_room_middle_x + _offset, _room_middle_y, "CurseOptions", obj_curse_choice6);
		}
		if (_current_choices[_i] = "Curse7"){
			instance_create_layer(_room_middle_x + _offset, _room_middle_y, "CurseOptions", obj_curse_choice7);
		}
		if (_current_choices[_i] = "Curse8"){
			instance_create_layer(_room_middle_x + _offset, _room_middle_y, "CurseOptions", obj_curse_choice8);
		}
		if (_current_choices[_i] = "Curse9"){
			instance_create_layer(_room_middle_x + _offset, _room_middle_y, "CurseOptions", obj_curse_choice9);
		}
		if (_current_choices[_i] = "Curse10"){
			instance_create_layer(_room_middle_x + _offset, _room_middle_y, "CurseOptions", obj_curse_choice10);
		}
		
		_offset = 200
	}
	
	
}

function choose_curses(){
	
	var _current_choices = array_create(2);
	
	for (var _i = 0; _i < array_length(_current_choices); _i++){
		_current_choices[_i] = global.curse_list[random(array_length(global.curse_list))];
	}
	
	return _current_choices;
}