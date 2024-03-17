for (var _i = 0; _i < 6; _i++){
	if global.curseInfo[_i].name = "Achilles" {
		global.curseInfo[_i].isActive = true;
	}
}

global.between_levels = false;

instance_destroy(obj_curse_choice_screen);
instance_destroy(obj_curse_choice_achilles);
instance_destroy(obj_curse_choice_bees);
instance_destroy(obj_curse_choice_midas);
instance_destroy(obj_curse_choice_reverse);
instance_destroy(obj_curse_choice_tantalus);
instance_destroy(obj_curse_choice_vampire);
