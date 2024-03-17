/// @description Insert description here
// You can write your code in this editor
if (global.achilles) {
	num_dam = random(100)
	if (num_dam > 95){
		hp = clamp(hp -  hp*0.9, 0, max_hp)
	}
	else {
		hp = clamp(hp - 1.9 * (other.damage)* defence, 0, max_hp)
	}
}
	else {
		hp = clamp(hp - 10 * (other.damage) * (defence), 0, max_hp);
	}
instance_destroy(other);

// EVAN PUSHED STUFF - 11:40-ISH pm
/// @description Insert description here
// You can write your code in this editor
/**
global.playerInfo.hp -= 10 * (other.damage) * (defence)
instance_destroy(other)