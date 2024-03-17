layer_create(6, "tackspawn")

randomize()
i = 0

num_spawns = 6 - global.current_level


if (-3 < num_spawns < 0){
    instance_create_layer(random(room_width) , random(room_height), "tackspawn", type, noSpinStruct)
}

if(num_spawns >= 5){
    num_spawns = 5
}

while(i < num_spawns){

spinStruct = {dir_string:"NESW ne nw se sw X"}
noSpinStruct = {dir_string:"NESW ne nw se sw"}

if (random(10) > 5){
    instance_create_layer(random(room_width) , random(room_height-500), "tackspawn", type, noSpinStruct)
}
else{
    instance_create_layer(random(room_width) , random(room_height-500), "tackspawn", type, spinStruct)
}

i++
}

i = 0

instance_destroy()