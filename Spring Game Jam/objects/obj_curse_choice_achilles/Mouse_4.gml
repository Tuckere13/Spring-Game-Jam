for (var _i = 0; _i < 7; _i++){
	if global.curseInfo[_i].name = "Achilles" {
		global.curseInfo[_i].isActive = true;
	}
}

global.used_curses[global.arr_count] = "Achilles";
global.arr_count++;

global.between_levels = false;
obj_player.hp = obj_player.max_hp;


instance_destroy(obj_curse_choice_screen);
instance_destroy(obj_curse_choice_achilles);
instance_destroy(obj_curse_choice_bees);
instance_destroy(obj_curse_choice_midas);
instance_destroy(obj_curse_choice_reverse);
instance_destroy(obj_curse_choice_tantalus);
instance_destroy(obj_curse_choice_vampire);
instance_destroy(obj_curse_choice_shoot);