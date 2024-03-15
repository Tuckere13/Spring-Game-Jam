


function reset_variables() {
	left = 0;
	right = 0;
	up = 0;
	down = 0;
}


function get_input() {
	if keyboard_check(ord("W")) up		= 1
	if keyboard_check(ord("A")) left	= 1
	if keyboard_check(ord("S")) down	= 1
	if keyboard_check(ord("D")) right	= 1
}

function calc_movement() {
	var _hmove = right - left;
	var _vmove = down - up;
	
	if _hmove != 0 or _vmove != 0 {
		
		//get direction
		var _dir = point_direction(0, 0, _hmove, _vmove);
		
		// get distance
		_hmove = lengthdir_x(move_speed, _dir);
		_vmove = lengthdir_y(move_speed, _dir);
		
		// add movement
		x += _hmove;
		y += _vmove;
	}
}


function collision() {
	var _tx = x;
	var _ty = y;
	
	x = xprevious;
	y = yprevious;
	
	var _disx = abs(_tx - x);
	var _disy = abs(_ty - y);
	
	// move as far as we can before hitting wall
	repeat(_disx){
		if (!place_meeting(x + sign(_tx - x), y, obj_invis_wall)) {
			x += sign(_tx - x);
		}
	}
	repeat(_disy){
		if (!place_meeting(x, y + sign(_ty - y), obj_invis_wall)) {
			y += sign(_ty - y);
		}
	}
	
}