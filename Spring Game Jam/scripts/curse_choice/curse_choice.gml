//////////////////////////////////////////////////////
// EVAN - March 16 2024 - 7 PM push

//suaus

randomize();

// holding curse info and if the curse is active or not.
global.curseInfo = array_create(7, curseInfoStructConstructor);


// Creating curses that change the user's stats.
// can only be used for curses that change the user's stats.

// Name, health, attack power, defense, speed
global.curseInfo[0] = new curseInfoStructConstructor("Midas", 0, 0, 0, 0, false);
global.curseInfo[1] = new curseInfoStructConstructor("Reverse", 25, 3, 3, 2, false);
global.curseInfo[2] = new curseInfoStructConstructor("Bees", 0, 0, 0, -1, false);
global.curseInfo[3] = new curseInfoStructConstructor("Achilles", 0, 0, 0, 0, false);
global.curseInfo[4] = new curseInfoStructConstructor("Tantalus", 0, 0, 0, 0, false);
global.curseInfo[5] = new curseInfoStructConstructor("Vampire", 0, 0, 0, 0, false);
global.curseInfo[6] = new curseInfoStructConstructor("Shoot", 0, 0, 0, 0, false);
//global.curseInfo[7] = new curseInfoStructConstructor("Curse8", 0, 0, 0, 0, false);
//global.curseInfo[8] = new curseInfoStructConstructor("Curse9", 0, 0, 0, 0, false);
//global.curseInfo[9] = new curseInfoStructConstructor("Curse10", 0, 0, 0, 0, false);
//////////////////////////////////////////////////////

function curse_screen(){
	
	var _screen_spawn_x = obj_player.x //room_width/2
	var _screen_spawn_y = obj_player.y - 180//room_height/2
	
	var _offset = -150
	
	instance_create_layer(_screen_spawn_x, _screen_spawn_y, "CurseScreen", obj_curse_choice_screen);
	
	var _current_choices = array_create(2);
	_current_choices = choose_curses();
	
	//////////////////////////////////////////////////////
	// EVAN - March 16 2024 - 7 PM push
	// checking if name of curse matches the name in current choices array.
	// WHEN ADDING NAME OF CURSES, MUST CHANGE NAME HERE TOO.
	for(var _i = 0; _i < array_length(_current_choices); _i++){
		if (_current_choices[_i].name = "Midas"){
			instance_create_layer(_screen_spawn_x + _offset, _screen_spawn_y, "CurseOptions", obj_curse_choice_midas);
		}
		if (_current_choices[_i].name = "Reverse"){
			instance_create_layer(_screen_spawn_x + _offset, _screen_spawn_y, "CurseOptions", obj_curse_choice_reverse);
		}
		if (_current_choices[_i].name = "Bees"){
			instance_create_layer(_screen_spawn_x + _offset, _screen_spawn_y, "CurseOptions", obj_curse_choice_bees);
		}
		if (_current_choices[_i].name = "Achilles"){
			instance_create_layer(_screen_spawn_x + _offset, _screen_spawn_y, "CurseOptions", obj_curse_choice_achilles);
		}
		if (_current_choices[_i].name = "Tantalus"){
			instance_create_layer(_screen_spawn_x + _offset, _screen_spawn_y, "CurseOptions", obj_curse_choice_tantalus);
		}
		if (_current_choices[_i].name = "Vampire"){
			instance_create_layer(_screen_spawn_x + _offset, _screen_spawn_y, "CurseOptions", obj_curse_choice_vampire);
		}
		if (_current_choices[_i].name = "Shoot"){
			instance_create_layer(_screen_spawn_x + _offset, _screen_spawn_y, "CurseOptions", obj_curse_choice_shoot);
		}
		if (_current_choices[_i].name = "Curse8"){
			instance_create_layer(_screen_spawn_x + _offset, _screen_spawn_y, "CurseOptions", obj_curse_choice8);
		}
		if (_current_choices[_i].name = "Curse9"){
			instance_create_layer(_screen_spawn_x + _offset, _screen_spawn_y, "CurseOptions", obj_curse_choice9);
		}
		if (_current_choices[_i].name = "Curse10"){
			instance_create_layer(_screen_spawn_x + _offset, _screen_spawn_y, "CurseOptions", obj_curse_choice10);
		}
		/////////////////////////////////////////////////////
	
		_offset = 150
	}
	
	
}


//////////////////////////////////////////////////////
// EVAN - March 16 2024 - 11 PM push
// fixed curse methods
function choose_curses(){
	
	var _current_choices = array_create(2);
	
	for (var _i = 0; _i < array_length(_current_choices); _i++)
	{
		var _index = round(random(array_length(global.curseInfo)));
		
		if(_index == 7)
		{
			_index = 6;
		}
		
		
		
		_current_choices[_i] = global.curseInfo[_index];
		
		// ensuring both curses on curse selection screen are different.
		while(_current_choices[0] == _current_choices[1])
		{
			
				_index = round(random(array_length(global.curseInfo)));
		
				if(_index == 7)
				{
					_index = 6;
				}
			
				_current_choices[0] = global.curseInfo[_index];
			}
			
		
	}
		//////////////////////////////////////////////////////
	
	
		return _current_choices;
}

// EVAN PUSHED STUFF 3/16/24 2:40 PM
// improved curse_choice algorithm
/*
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
		
	for (var _i = 0; _i < array_length(_current_choices); _i++)
	{
		_current_choices[_i] = global.curse_list[random(array_length(global.curse_list))];
		
		// ensuring both curses on curse selection screen are different.
		while(_current_choices[0] == _current_choices[1])
		{
			_current_choices[0] = global.curse_list[random(array_length(global.curse_list))];
		}
		
	}
		return _current_choices;
}
*/