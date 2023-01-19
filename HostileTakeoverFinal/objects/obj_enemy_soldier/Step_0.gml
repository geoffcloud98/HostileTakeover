// Ensure player exists
if(instance_exists(obj_player)) {
// Gravity
if(instance_exists(obj_terrain)) {
if(instance_place(x, y+1, obj_terrain) or instance_place(x, y+1, obj_terrain_rotating_platform)) {
		gravity = 0
		} else {
		gravity = 1.2
		
		if(vspeed > 12) vspeed = 12
		}
}
if(instance_exists(obj_terrain_rotating_platform)) {
if(instance_place(x, y+1, obj_terrain_rotating_platform)) {
		gravity = 0
		} else {
		gravity = 1.2
		
		if(vspeed > 12) vspeed = 12
		}
}
// Determine which direction the player is from the enemy.
if(self.x - obj_player.x > 0) player_on_left = true
if(self.x - obj_player.x < 0) player_on_left = false
// Turn to face player.
if(player_on_left) {
image_xscale = 1
movement_route = -move_speed
} else {
image_xscale = -1
movement_route = move_speed
}
// Activate aggro if player is in aggro range, otherwise deactivate.
if(distance_to_object(obj_player) <= aggro_range) {
	drawn_aggro = true
} else {
	drawn_aggro = false
	image_index = 0
}

// Activate is_too_close if too close.
if(distance_to_object(obj_player) <= too_close) is_too_close = true
// When far enough away, go forward again.
if(distance_to_object(obj_player) > too_close*8) is_too_close = false
// Start enemy actions
if(drawn_aggro) {

// Move forward
// Left Case
if(image_xscale == 1) {
for(i = -move_speed; i < 0; i++) {
if(is_too_close = false and !instance_place(x+i, y, obj_terrain)) {
x = x + i
break
}

// Backpedal until far enough away.
if(is_too_close and !instance_place(x-i, y, obj_terrain)) {
x = x - i
break
}
}
// Right Case
} else if(image_xscale == -1) {
for(i = move_speed; i > 0; i--) {
if(is_too_close = false and !instance_place(x+i, y, obj_terrain)) {
x = x + i
break
}

// Backpedal until far enough away.
if(is_too_close and !instance_place(x-i, y, obj_terrain)) {
x = x - i
break
}
}
}

// Jumping
if((instance_place(x, y+1, obj_terrain) or instance_place(x, y+1, obj_terrain_rotating_platform)) and distance_to_object(obj_bullet_player) <= too_close) {
		vspeed = jump_height
		}
if(instance_place(x, y+1, obj_terrain) or instance_place(x, y+1, obj_terrain_rotating_platform)) {
		gravity = 0
		} else {
		gravity = 1.2
		
		if(vspeed > 12) vspeed = 12
		}

// Conveyor Belt Rules
if(instance_exists(obj_terrain_conveyor_right)) {
if(instance_place(x, y+1, obj_terrain_conveyor_right)) {
x = x+obj_terrain_conveyor_right.move_distance
}
}
if(instance_exists(obj_terrain_conveyor_left)) {
if(instance_place(x, y+1, obj_terrain_conveyor_left)) {
x = x+obj_terrain_conveyor_left.move_distance
}
}

}
// Boss Conveyor
if(instance_exists(obj_terrain_conveyor_boss)){
for(i=abs(obj_terrain_conveyor_boss.move_distance); i > 0; i--) {
if(instance_place(x, y+1, obj_terrain_conveyor_boss) and !instance_place(x-i,y,obj_terrain)) {
if(obj_terrain_conveyor_boss.going_left) {
	x = x-i
	} else {
x = x+i
}

break
}
}
}
// Put all code above this line.
}
