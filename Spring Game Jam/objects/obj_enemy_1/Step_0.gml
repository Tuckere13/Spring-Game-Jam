if (can_attack == true) {
	alarm[0] = 120;
	can_attack = false;
}
if (array_index >= 16){
	for (var i = 0; i < array_length(bullet_array); i += 1){
	instance_destroy(bullet_array[i]);
	}
	array_index = 0;
}