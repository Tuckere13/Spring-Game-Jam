/*
if (instance_exists(obj_player)){
	if (obj_player.hspeed > obj_player.vspeed){
		y = obj_player.y + sign(obj_player.image_yscale) * 50
		x = obj_player.x 
	}else{
	x = obj_player.x + sign(obj_player.image_xscale)* 50
	y = obj_player.y
	}
}
*/


x = obj_player.x;
y = obj_player.y;



x += offset_x; 
y += offset_y; 

if(global.shoot) {
	attack_power = 1;
}