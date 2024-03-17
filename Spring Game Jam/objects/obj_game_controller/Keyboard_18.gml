/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("M"))){
	global.midas = true
}
if (keyboard_check_pressed(ord("B"))){
	instance_create_layer(x, y, "Instances", obj_bees)
}
if (keyboard_check_pressed(ord("O"))){
	global.reverse = true
	if (instance_exists(obj_player)){
		obj_player.defence /= 3
		obj_player.speed_buff += 2
		obj_player.max_hp += 25
	}
	
}
if (keyboard_check_pressed(ord("V"))){
	global.vampire = true
	if (instance_exists(obj_player)){
	obj_player.max_hp /= 2
	obj_player.hp /= 2
	}
}

if (keyboard_check_pressed(ord("A"))){
	global.achilles = true
}
if (keyboard_check_pressed(ord("T"))){
	global.tantalus = true
}
if (keyboard_check_pressed(ord("D"))){
	global.lightweight = true
}