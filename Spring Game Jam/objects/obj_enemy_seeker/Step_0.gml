/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player)){
	if (stagger)
	{
		if (global.midas){
		sprite_index = spr_seeker_midas
		}
		hspeed = 0
		vspeed = 0
	}else {
		sprite_index = spr_seeker_front
		if(distance_to_object(obj_player) <= 500) {
			move_towards_point(obj_player.x, obj_player.y, move_speed)
		}
	front_back = sign(y - obj_player.y)
	if (front_back < 0){
		sprite_index = spr_seeker_front
	}
	else if (front_back > 0) {
		sprite_index = spr_seeker_back
	}
	}
}
if (hp <= 0){
	instance_destroy(self)
}