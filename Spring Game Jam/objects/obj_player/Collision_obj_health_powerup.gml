/// @description Insert description here
// You can write your code in this editor
if (global.midas){
	hp  = clamp(hp + 15, 0, max_hp)
} 
if (global.tantalus) {
	hp = clamp(hp + 60, 0, max_hp)
}if (global.vampire = true){
	hp += 0;
}
else {
	hp = clamp(hp + 30, 0, max_hp)
}
instance_destroy(other)