if (!invinc){
stagger = true;
hp -= other.attack_power;
invinc = true;
}

object_set_visible(obj_spider, false)

alarm_set(2, stagger_time) //stagger
alarm_set(3, 5) // invincibility
alarm_set(4, 5) // I frame indicator
alarm_set(4, 10) // I frame indicator 2