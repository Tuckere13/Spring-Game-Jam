///////////////////// Movement ////////////////////////
reset_variables();

get_input();

calc_movement();

//Dash Stuff - Jacob push//

keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
keyJump = keyboard_check_pressed(vk_space);
keyUp = keyboard_check(vk_up) or keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) or keyboard_check(ord("S"));
keyDash = keyboard_check_pressed(vk_shift);
keyAction = keyboard_check_pressed(ord("E"));

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



if(!global.between_levels){
	move_speed = 5 + speed_buff;
} else {

	move_speed = 0;

}

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