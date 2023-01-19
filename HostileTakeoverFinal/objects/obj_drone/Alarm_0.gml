if(instance_exists(obj_player) and distance_to_object(obj_player) <= aggro_range) {
instance_create_layer(x, y, "Attacks", obj_bullet_enemy)
}
alarm_set(0, shot_interval)