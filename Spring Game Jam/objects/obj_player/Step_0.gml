

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
