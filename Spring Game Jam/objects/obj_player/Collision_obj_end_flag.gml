

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

layer_destroy("wallspawn")
layer_destroy("tackspawn")
layer_destroy("spiderspawn")

instance_create_layer(0,0, "Instances", obj_spider_spawner)
instance_create_layer(0,0, "Instances", obj_wall_spawner_front)
instance_create_layer(0,0, "Instances", obj_tack_spawner)