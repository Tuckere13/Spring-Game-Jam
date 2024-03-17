
if (!enemy_attack){
	hp = clamp(hp - 15, 0, max_hp)
	enemy_attack = true;
	alarm[5] = 70
}