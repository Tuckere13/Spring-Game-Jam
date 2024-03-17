

global.current_level--;
global.between_levels = true;


x = starting_x;
y = starting_y;

curse_screen();

instance_create_layer(992,426, "Instances", obj_boss_enemy_1)

tempWidth = 768
tempHeight = 256
for (var j = 0; j < 7; j += 1){
    instance_create_layer(tempWidth+ 64 * j, tempHeight, "Walls", obj_medusa_wall)
}

