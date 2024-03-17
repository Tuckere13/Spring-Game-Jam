


function reset_variables() {
	left = 0;
	right = 0;
	up = 0;
	down = 0;
}


function get_input() {
	
	if (global.reverse) {
		if keyboard_check(ord("S")){
			up = 1;
			//obj_player.sprite_index = spr_player_back;
		}
		if keyboard_check(ord("D")){
			left =1;
		}
		if keyboard_check(ord("W")){ 
			//obj_player.sprite_index = spr_player;
			down = 1;
		}
		if keyboard_check(ord("A")){ 
			right= 1;
		}
			
	} else {
		if keyboard_check(ord("W")){
			up = 1;
			//obj_player.sprite_index = spr_player_back;
		}
		if keyboard_check(ord("A")){
			left =1;
		}
		if keyboard_check(ord("S")){ 
			//obj_player.sprite_index = spr_player;
			down = 1;
		}
		if keyboard_check(ord("D")){ 
			right= 1;
		}
	}
}


function calc_movement() {
	var _hmove = right - left;
	var _vmove = down - up;
	
	if _hmove != 0 or _vmove != 0 {
		
		//get direction
		var _dir = point_direction(0, 0, _hmove, _vmove);
		
		// get distance
		_hmove = lengthdir_x(obj_player.move_speed, _dir);
		_vmove = lengthdir_y(obj_player.move_speed, _dir);
		
		// add movement
		x += _hmove;
		y += _vmove;
		
		
		
		if (_hmove > 0){
			//image_xscale = -1
		}
		if (_hmove < 0) {
			//image_xscale = 1
		}
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
		if (!place_meeting(x + sign(_tx - x), y, obj_wall)) {
			x += sign(_tx - x);
		}
	}
	repeat(_disy){
		if (!place_meeting(x, y + sign(_ty - y), obj_wall)) {
			y += sign(_ty - y);
		}
	}
	
}