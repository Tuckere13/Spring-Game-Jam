
/*
if(!global.between_levels) or (!obj_game_controller.paused == true){
	move_speed = base_speed + speed_buff;
} else {
	move_speed = 0;
}
*/
if (obj_game_controller.paused == true) or (global.between_levels = true){
	move_speed = 0;
} else {
	move_speed = base_speed + speed_buff;
}





///////////////////// Movement ////////////////////////
reset_variables();

get_input();

calc_movement();

//Dash Stuff - Jacob push//

if ((point_direction(x, y, mouse_x, mouse_y) <= 45 and point_direction(x, y, mouse_x, mouse_y) >= 0)) or (point_direction(x, y, mouse_x, mouse_y) <= 360 and point_direction(x, y, mouse_x, mouse_y) > 315){
	look_dir = "right"
	sprite_index = spr_player;
	image_xscale = -1;
}
if (point_direction(x, y, mouse_x, mouse_y) <= 135 and point_direction(x, y, mouse_x, mouse_y) > 45) {
	look_dir = "up"
	sprite_index = spr_player_back;
	image_xscale = 1;
}
if (point_direction(x, y, mouse_x, mouse_y) <= 225 and point_direction(x, y, mouse_x, mouse_y) > 135) {
	look_dir = "left"
	sprite_index = spr_player;
	image_xscale = 1;
}
if (point_direction(x, y, mouse_x, mouse_y) <= 315 and point_direction(x, y, mouse_x, mouse_y) > 225) {
	look_dir = "down"
	sprite_index = spr_player;
	image_xscale = 1;
}










keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
keyJump = keyboard_check_pressed(vk_space);
keyUp = keyboard_check(vk_up) or keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) or keyboard_check(ord("S"));
keyDash = keyboard_check_pressed(vk_shift);
keyAction = keyboard_check_pressed(ord("E"));

// EVAN STUFF - March 16th, 2024 - 1PM push
// melee and ranged attack buttons, 
// Does it need to be in create, step, or both?
meleeKey = keyboard_check_pressed(ord("9"));
rangedKey = keyboard_check_pressed(ord("0"));

//Dash Cooldown
if (can_attack == true) {
	alarm[0] = 120;
	can_attack = false;
}

if (isDashing==false){
	StateFree();
}
else{
	StateDash();
}
//end of push//
////////////////////////////////////////////////////////





// PUSHED STUFF
// playerInfoStruct
/*
function playerInfoStruct(_health, _attack, _defense, _move_speed) constructor
{
	hp = _health;
	attack = _attack;
	defense = _defense;
	move_speed = _move_speed;
}

// attack variables.
isMelee = false;
isRanged = false;
*/

// EVAN PUSHED STUFF - 11:40 PM-ish


if(!global.between_levels){
	move_speed = 5 + speed_buff;
} else {

	move_speed = 0;

}

// basic death condition lol

/*
if(global.playerInfo.hp <= 0)
{
	instance_destroy();
}
*/