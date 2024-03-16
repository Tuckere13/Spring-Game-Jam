

///////////////////// Movement ////////////////////////
reset_variables();

get_input();

calc_movement();
////////////////////////////////////////////////////////



if(!global.between_levels){
	move_speed = 5 + speed_buff;
} else {

	move_speed = 0;

}

// PUSHED STUFF
// playerInfoStruct
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