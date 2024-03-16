

global.current_level = 10;

global.between_levels = false;

global.curse_list = array_create(10);

for (var _i = 0; _i < 10; _i++){
	
	global.curse_list[_i] = $"Curse{_i+1}";
}