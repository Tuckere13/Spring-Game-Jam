hp = 100  // might need to remove this sowwwwy
max_hp = 100
prevhp = int64(hp);
prevbuff = int64(speed_buff);

enemy_attack = false;

webHit = false;

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

//////////////////////////////////////////////////////
// EVAN - March 16 2024 - 7 PM push

// Initialize playerInfo
function configStats()
{
	// resets each time so same curses aren't added on multiple times when they aren't
	// supposed to.
	global.playerInfo =  playerInfoStruct(100, 5, 5, 2);
	
	for(var _i = 0; _i < array_length(global.curseInfo); _i++)
	{
		if(global.curseInfo[_i].isActive = true)
		{
			var _tempCurseData = global.curseInfo[_i].playerInfoStruct();
			global.playerInfo.hp += _tempCurseData.hp;
			global.playerInfo.attack_power += _tempCurseData.attack_power;
			global.playerInfo.defense += _tempCurseData.defense;
			global.playerInfo.moveSpeed += _tempCurseData.move_speed;
		}
	
	}
	return global.playerInfo;
}

configStats();
//////////////////////////////////////////////////////

// EVAN PUSHED STUFF - 11:40-ish PM


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
can_melee = true;

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

// EVAN STUFF - March 16th 2024 - 1 PM push
// framework for ice ball attack with rangedStructConstructor
iceBallInfo = new rangedStructConstructor(8,8);	// distance, constructor.

keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
keyJump = keyboard_check_pressed(vk_space);
keyUp = keyboard_check(vk_up) or keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) or keyboard_check(ord("S"));
keyDash = keyboard_check_pressed(vk_shift);
keyAction = keyboard_check_pressed(ord("E"));

// EVAN STUFF - March 16th, 2024 - 1PM push
// melee and ranged attack buttons, 
meleeKey = keyboard_check_pressed(ord("9"));
rangedKey = keyboard_check_pressed(ord("0"));

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
		
		prevhp = int64(hp);
		
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
	
	hp = prevhp;
	
	//Ending the dash
	dashEnergy -= dashSp;
	if (dashEnergy <= 0)
	{
		vsp = 0;
		hsp = 0;
		hp = prevhp;
		state = StateFree();
	}
}

state = StateFree();
//end of push//


// EVAN STUFF - March 16th 2024 - 1PM push
//rough draft - attack states

// melee state
function StateMelee()
{
	isMelee = true;
	
	// damage = player's attack stat.
	meleeDamage = global.playerInfo.attack;		// feel free to tinker with this =)
	
	// TO-DO : create/assign attacking object/sprite
	
	
	// TO-DO : collision w/ enemies, deal damage to enemies.
	//me
	// 
	
	// set to StateFree after all info run.
	state = StateFree();
}

// ranged state?
function StateRanged()
{
	isRanged = true;
	
	// create projectile object and assign distance and speed 
	// to it from struct constructor?
	// rangeAttack = new rangedStructConstructor(distance, proSpeed); // both ints.
	
	// damage done based on attack stat.
	
	// decrease enemy hp (or kill if dies in 1 hit) if projectile collides w/ it.
	
	// set to StateFree after all info run.
	state = StateFree();
	
}

// reset to StateFree by default.
state = StateFree();

//////////////////////////////////////
//Projectile
array_index = 0

can_shoot = true;

layer_create(4,"bullet");

bullet_array = array_create(16);

spin = false;

for (var i = 0; i < string_length(dir_string) + 1; i += 1){
	if (string_char_at(dir_string,i) == "X"){
			spin = true;
	}
}

function stringSearch(dir){
	for (var i = 0; i < string_length(dir_string) + 1; i += 1){
		if (string_char_at(dir_string,i) == dir){
			var _inst = instance_create_layer(x, y,"bullet", obj_player_bullet);//struct ={bullet_dir: dir});
			//layer_instance_get_instance(_inst).bullet_dir = dir;
			_inst.bullet_dir = dir;
			_bullet_array[array_index] = _inst;
			array_index += 1;
			}
		else if (string_char_at(dir_string,i) + string_char_at(dir_string,i+1) == dir){
			var _inst = instance_create_layer(x , y,"bullet", obj_player_bullet);//struct ={bullet_dir: dir});
			//layer_instance_get_instance(_inst).bullet_dir = dir;
			_inst.bullet_dir = dir;
			_bullet_array[array_index] = _inst;
			array_index += 1;
			}
	}
}
////////////////////////////////////////////

if (global.bees){
	
	instance_create_layer(x, y,"Instances", obj_bees)

}

if (global.vampire = true) {
	if (instance_exists(obj_player)){
	obj_player.max_hp /= 2
	obj_player.hp /= 2
	}
}