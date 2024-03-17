

if (can_be_damaged) {
	can_be_damaged = false;
	
	image_blend = c_red;
	alarm[2] = 7;
	alarm[1] = 15;
	
	hp -= other.attack_power;
	
}