

if (webHit == false){
prevbuff = int64(speed_buff);
webHit = true;
}
image_blend = c_dkgrey
canDash = false;
speed_buff = -4;
alarm_set(1, 120);

hp = clamp(hp - 10 * (other.damage) * (defence), 0, max_hp);
instance_destroy(other);