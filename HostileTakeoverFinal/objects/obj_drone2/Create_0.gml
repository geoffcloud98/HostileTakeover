alarm_set(0, shot_interval)

// Store starting position
start_x = x;
start_y = y;

path_start(path_drone2, move_speed, path_action_reverse, false);

// Inherit the parent event
event_inherited();