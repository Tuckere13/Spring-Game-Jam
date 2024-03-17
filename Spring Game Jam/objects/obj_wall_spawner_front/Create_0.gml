layer_create(10, "wallspawn")
randomize()
i = 0

num_spawns = 15 - global.current_level

if(num_spawns >= 15){
    num_spawns = 15
}

while(i < num_spawns){

instance_create_layer(random(room_width) , random_range(800/64, (room_height-500)/64) * 64, "wallspawn", type)

i++
}
k = 0

num_spawns = 10 - global.current_level

if(num_spawns >= 7){
    num_spawns = 7
}

while(k < num_spawns){

tempWidth = random(room_width/64)
tempHeight = random_range(832, room_height-500)
for (var j = 0; j < random_range(2,5); j += 1){
    instance_create_layer((tempWidth * 64) + 64 *j, tempHeight, "wallspawn", type)
}
k++
}

with(type) {
    if !place_snapped(64,64){
        move_snap(64,64);
    }
}

i = 0

k = 0

instance_destroy() 