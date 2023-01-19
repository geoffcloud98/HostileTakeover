/// @description Insert description here
// You can write your code in this editor
if(going_left) {
going_left = false
sprite_index = spr_conveyor_right_final
} else {
going_left = true
sprite_index = spr_conveyor_left_final
}
alarm_set(0, swap_time)
