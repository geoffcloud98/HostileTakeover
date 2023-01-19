direction = point_direction(x,y, obj_crosshair.x, obj_crosshair.y)

image_angle = direction - 90;

show_debug_message(image_angle)
move_towards_point(obj_crosshair.x, obj_crosshair.y, move_speed)