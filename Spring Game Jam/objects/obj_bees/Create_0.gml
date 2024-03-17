
bees = part_system_create_layer(layer_get_id("bees_layer"), true, prs_bees)

part_system_position(bees, room_width/2, room_height/2)
part_system_depth(bees, 1)
part_system_automatic_draw(bees, true)
obj_player.speed_buff = -1
