if(instance_exists(obj_player)) {
	// store player position
	player_x = obj_player.x;
	player_y = obj_player.y;
	
	// IF player is within aggro range
	if(point_distance(x, y, player_x, player_y) < aggro_range) {
		path_end();
		//chase the player and avoid terrain
		mp_potential_step_object(player_x, player_y, move_speed, obj_terrain);
	}
	// if the player is no in aggro range
	else if(path_index != path_drone1) {
		mp_potential_step_object(start_x, start_y, move_speed, obj_terrain);
		//if the difference between the starting x,y points and the current position x,y points
		//is less than 2, restart on the original path
		if(abs(x - start_x) < 2 && abs(y - start_y) < 2) {
			path_start(path_drone1, move_speed, path_action_reverse, false);	
		}
	}
}