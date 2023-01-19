/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(obj_player)) instance_destroy()
direction = point_direction(x,y, obj_player.x, obj_player.y)

image_angle = direction - 90;

show_debug_message(image_angle)
move_towards_point(obj_player.x, obj_player.y, move_speed)