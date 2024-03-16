hp = 100  // might need to remove this sowwwwy

starting_x = x;
starting_y = y;

// PUSHED STUFF - delete this line!!!
// All da struct info for da game.

// Initial playerInfo


//playerInfo = new playerInfoStruct(100, 5, 5, 2); // edit to work out kinks


// for loop listing all the curse effects 
// if statements for each curse if they are active
		// Will they be represented by an array or boolean values?
// create new playerInfoStruct and assign playInfo to it depending on the curse


/* SKECTH of what function could look like.
for(all curses)
{
	if(curse active either boolean/in array)
	{
		curseInfo = new playerInfoStruct(health, attack, defense, move_speed);
		playerInfo = curseInfo;
	}
}
*/

// EVAN PUSHED STUFF - 11:40-ish PM
starting_x = x;
starting_y = y;

// attack variables.
isMelee = false;
isRanged = false;

// Initialize playerInfo
global.playerInfo =  playerInfoStruct(100, 5, 5, 2); // edit to work out kinks 
//may need new keyword b4 playerInfoStruct

// for loop listing all the curse effects 
// if statements for each curse if they are active
		// Will they be represented by an array or boolean values?
// create new playerInfoStruct and assign playInfo to it depending on the curse
// *********** MAY NEED TO DO MATH TO CALCULATE NEW STATS INSTEAD ***********


/* SKECTH of what function could look like.
for(all curses)
{
	if(curse active either boolean/in array)
	{
		curseInfo = new playerInfoStruct(health, attack, defense, move_speed);
		playerInfo = curseInfo;
	}
	
}
*/



//Dash Stuff - Jacob push//
can_attack = true;

grv = 0;
hsp = 0;
vsp = 0;
hspWalk = 7;
vspJump = -5;
canJump = 0;

canDash = true;

//Dash
global.canDashLeft= true; 
global.canDashRight = true;
global.canDashUp = true
global.canDashDown = true;
dashDistance = 192;
dashTime = 16;
dashDirection = 0;
dashSp = 0;
dashEnergy = dashDistance;

isDashing = false;

//Ice Ball
 
aim_dir = 0; 
ice_dis = 8; 
global.can_use_ice = true; 
ice_speed = 8;


keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
keyJump = keyboard_check_pressed(vk_space);
keyUp = keyboard_check(vk_up) or keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) or keyboard_check(ord("S"));
keyDash = keyboard_check_pressed(vk_shift);
keyAction = keyboard_check_pressed(ord("E"));


function StateFree()
{
	//4bonez
	isDashing = false;
	
	//Work out where to move horizontally
	//hsp = (keyRight - keyLeft) * hspWalk;
	
	if(hsp< 0) {
		image_xscale = -1;
	}
	if(hsp> 0) {
		image_xscale = 1;
	}
	if(hsp< 0) {
		image_index = 0;
	}


	//Dash input
	if (keyDash && canDash)
	{
		//audio_play_sound(snd_dash, 1, false);
		canDash = false;
		canJump = 0;
		dashDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
		dashSp = dashDistance/dashTime;
		dashEnergy = dashDistance;
		
		state = StateDash();
	}
}

function StateDash()
{

	isDashing = true; 

	//Move Via the dash
	hsp = lengthdir_x(dashSp, dashDirection);
	vsp = lengthdir_y(dashSp,dashDirection);
	
	//Trail Effect
	with (instance_create_depth(x,y,depth+1,Object8))
	{
		sprite_index = other.sprite_index;
		image_blend = c_fuchsia;
		image_alpha = 0.7;
	}
	
	//Horizontal Collission
	if (place_meeting(x + hsp, y, obj_wall))
	{
		while (abs(hsp) > 0.1)
		{
			hsp *= 0.5;
			if(!place_meeting(x + hsp, y, obj_wall)) x += hsp;
		}
		hsp = 0;
	}

	x += hsp;

	//vertical collision
	if (place_meeting(x, y + vsp, obj_wall))
	{

		while (abs(vsp) > 0.1)
		{
			vsp *= 0.5;
			if (!place_meeting(x, y + vsp, obj_wall)) y += vsp;
		}
		vsp = 0;
	}
	y += vsp;
	
	//Ending the dash
	dashEnergy -= dashSp;
	if (dashEnergy <= 0)
	{
		vsp = 0;
		hsp = 0;
		state = StateFree();
	}
}

state = StateFree();
//end of push//