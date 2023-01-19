/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player) and distance_to_object(obj_player) <= aggro_range) {

sprite_index = spr_turret_fire
}
alarm_set(0, shot_interval)