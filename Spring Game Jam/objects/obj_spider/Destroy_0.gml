

if (instance_exists(obj_player)) && (global.vampire){
	 if (obj_player.hp != obj_player.max_hp){
		obj_player.hp += 10
	 }
	 
	 if (obj_player.hp > obj_player.max_hp) {
		obj_player.hp = obj_player.max_hp
	 }
 }