/// @description Insert description here
// You can write your code in this editor

if (hp <= 0){
	if (instance_exists(obj_player) && global.vampire){
		obj_player.hp += 30
	}
	instance_destroy(self)
}