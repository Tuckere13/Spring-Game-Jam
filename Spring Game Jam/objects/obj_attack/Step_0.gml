/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player)){
	if (obj_player.hspeed > obj_player.vspeed){
		y = obj_player.y + sign(obj_player.image_yscale) * 50
		x = obj_player.x 
	}else{
	x = obj_player.x + sign(obj_player.image_xscale)* 50
	y = obj_player.y
	}
}