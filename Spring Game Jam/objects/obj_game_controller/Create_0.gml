
audio_stop_all();
audio_play_sound(sd_game_music, 10, true, 1, 3)

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

global.used_curses = array_create(7, "Curse10");
global.arr_count = 0;