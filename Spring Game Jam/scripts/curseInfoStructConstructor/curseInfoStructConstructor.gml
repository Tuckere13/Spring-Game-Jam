//////////////////////////////////////////////////////
// EVAN - March 16 2024 - 7 PM push
// curseInfo constructor that holds name, changes to user stats, and if it is active.
function curseInfoStructConstructor(_name, _health, _attack_power, _defense, _move_speed, _isActive) constructor
{
	name = _name;
	curseInfoToPlayer = new playerInfoStruct(_health, _attack_power, _defense, _move_speed);
	
	// IDK if this variable is needed
	// need Boolean to check if 
	isActive = _isActive; // initially false, to true when clicked.
}
//////////////////////////////////////////////////////