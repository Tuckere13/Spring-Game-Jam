
global.attack_power = 1

global.current_level = 10;

global.between_levels = false;

global.curse_list = array_create(10);

global.midas = false
global.reverse = false
global.bees = false
global.achilles = false
global.tantalus = false
global.vampire = false
global.lightweight = false
global.shoot = false


for (var _i = 0; _i < 10; _i++){
	
	global.curse_list[_i] = $"Curse{_i+1}";
}


if (room = rm_main){
	window_set_fullscreen(true);
}
	

paused = false;
paused_surf = -1;