
if (obj_game_controller.paused == true) or (global.between_levels = true){
	move_speed = 0;
} else {
	move_speed = base_speed + speed_buff;
}

if (global.tantalus){
	hp -= 0.0005
}


///////////////////// Movement ////////////////////////
reset_variables();

get_input();

calc_movement();


if ((point_direction(x, y, mouse_x, mouse_y) <= 45 and point_direction(x, y, mouse_x, mouse_y) >= 0)) or (point_direction(x, y, mouse_x, mouse_y) <= 360 and point_direction(x, y, mouse_x, mouse_y) > 315){
	look_dir = "right"
	sprite_index = spr_player;
	image_xscale = -1;
	dir_string = "E"
}
if (point_direction(x, y, mouse_x, mouse_y) <= 135 and point_direction(x, y, mouse_x, mouse_y) > 45) {
	look_dir = "up"
	sprite_index = spr_player_back;
	image_xscale = 1;
	dir_string = "N"
}
if (point_direction(x, y, mouse_x, mouse_y) <= 225 and point_direction(x, y, mouse_x, mouse_y) > 135) {
	look_dir = "left"
	sprite_index = spr_player;
	image_xscale = 1;
	dir_string = "W"
}
if (point_direction(x, y, mouse_x, mouse_y) <= 315 and point_direction(x, y, mouse_x, mouse_y) > 225) {
	look_dir = "down"
	sprite_index = spr_player;
	image_xscale = 1;
	dir_string = "S"
}

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



if (global.shoot){
	bullet_curse = true
}


if (global.shoot){
	if (can_shoot == true and spin == false) {
		alarm[3] = 45;
		can_shoot = false;
}

else if (can_shoot and spin){
	alarm[4] = 10;
	can_shoot = false;
}

if (array_index >= 16){
	for (var i = 0; i < array_length(bullet_array); i += 1){
		instance_destroy(bullet_array[i]);
	}
	array_index = 0;
}
}


if (hp <=0){
    x = starting_x
    y = starting_y
    hp = max_hp
}