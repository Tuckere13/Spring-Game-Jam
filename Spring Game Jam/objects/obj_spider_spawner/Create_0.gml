/// @description Insert description here
// You can write your code in this editor
layer_create(11, "spiderspawn")
randomize()
i = 0
num_spawns = 4 - global.current_level

if(num_spawns >= 8){
    num_spawns = 8
}

while(i < num_spawns){

spinStruct = {dir_string:"NESW ne nw se sw X"}
noSpinStruct = {dir_string:"NESW ne nw se sw"}

//if (random(10) > 5){
    instance_create_layer(random(room_width) , random(room_height-500), "spiderspawn", type, noSpinStruct)
//}
//else{
//    instance_create_layer(random(room_width) , random(room_height), "Instances", type, spinStruct)
//}

i++
}

i = 0

instance_destroy()