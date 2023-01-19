/// @description Player control and gravity.

// Dash Movement
if (is_dashing) {
	vspeed = 0
	y = y_position

// Left dash wall check
for(i = move_speed*2; i > 0; i--) {
if(image_xscale = -1 and !instance_place(x-i, y, obj_terrain)) {
x -= i
break
}
}
// Right dash wall check
for(i = move_speed*2; i > 0; i--) {
if (image_xscale = 1 and !instance_place(x+i, y, obj_terrain)) {
x += i
break
}
}
// End Dash Movement
} else {
// Update y position
	y_position = y
// Movement
if (keyboard_check(ord("A")) and !instance_place(x-move_speed, y, obj_terrain)) {
		x += -move_speed
		image_xscale = -1
	} else if (keyboard_check(ord("A"))) {
	for(i = move_speed; i > 0; i--) {
	if(!instance_place(x-i, y, obj_terrain)) {
	x+=-i
	break
	}
	}
	}

	if (keyboard_check(ord("D")) and !instance_place(x+move_speed, y, obj_terrain)) {
		x += move_speed
		image_xscale = 1
	} else if (keyboard_check(ord("D"))) {
	for(i = move_speed; i > 0; i--) {
	if(!instance_place(x+i, y, obj_terrain)) {
	x+=i
	break
	}
	}
	}
// Jump
	if(keyboard_check_pressed(vk_space)) {
		if(instance_place(x, y+1, obj_terrain) or instance_place(x, y+1, obj_terrain_rotating_platform) or can_jump) {
		vspeed = jump_height
		}
	}
	// Exception for getting stuck
	if(!instance_place(x, y+1, obj_terrain) and instance_place(x, y+2, obj_terrain)) y+=1
	if(instance_place(x, y+1, obj_terrain) or instance_place(x, y+2, obj_terrain)) {
		gravity = 0
		hit_ground = true
		can_double_jump = true
		} else {
		gravity = 1.2
		// Double Jump
		if(keyboard_check_pressed(vk_space) and can_double_jump and !instance_place(x, y+1, obj_terrain) and !instance_place(x, y+1, obj_terrain_rotating_platform)) { 
		vspeed = jump_height
		// Cheating lets you jump infinitely
		if(!global.jump_cheat) can_double_jump = false	
		}
		if(vspeed > 12) vspeed = 12
		}
// Dash move
		if(keyboard_check_pressed(vk_shift) and can_dash) {
			can_dash = false
			hit_ground = false
			dash_cooldown_over = false
			is_dashing = true
			alarm_set(2, dash_duration)
		}
	// If cheating, don't need to hit the ground
	if(dash_cooldown_over and (hit_ground or global.dash_cheat)) can_dash = true
	//Shooting mechanic
	if(canShoot) {
		if(mouse_check_button(mb_left)) {
			canShoot = false;
			if(global.bullet_cheat) {
			//if player is facing right
				if(image_xscale == 1) {
					instance_create_layer(x+80, y-55, "Attacks", obj_bullet_cheat)
					//if player is facing left
				} if(image_xscale == -1) {
					instance_create_layer(x-80, y-55, "Attacks", obj_bullet_cheat)	
				}	
			} 
			else {
				//if player is facing right
				if(image_xscale == 1) {
					instance_create_layer(x+80, y-55, "Attacks", obj_bullet_player)
					//if player is facing left
				} if(image_xscale == -1) {
					instance_create_layer(x-80, y-55, "Attacks", obj_bullet_player)	
				}
			}
			alarm_set(1, room_speed/shot_interval)
		}
	}
// Animations
if(!animation_override) {
if(mouse_check_button(mb_left)) {
	sprite_index = spr_player_shooting
} else if(is_dashing) {
	sprite_index = spr_player_dash
	animation_override = true
} else if (keyboard_check(ord("A")) or keyboard_check(ord("D")) and (instance_place(x, y+1, obj_terrain) or instance_place(x, y+2, obj_terrain) or instance_place(x, y+1, obj_terrain_rotating_platform))) {
	sprite_index = spr_player_run
} else if(keyboard_check_pressed(vk_space) and (can_jump or can_double_jump)) {
	sprite_index = spr_player_jump_start
	animation_override = true
} else if(sprite_index = spr_player_in_air and (instance_place(x, y+1, obj_terrain) and instance_place(x, y+2, obj_terrain) or instance_place(x, y+3, obj_terrain) or instance_place(x, y+4, obj_terrain) or instance_place(x, y+1, obj_terrain_rotating_platform) or instance_place(x, y+2, obj_terrain_rotating_platform) or instance_place(x, y+3, obj_terrain_rotating_platform))) {
	sprite_index = spr_player_jump_end
	animation_override = true
} else if(!instance_place(x, y+1, obj_terrain) and !instance_place(x, y+2, obj_terrain) and !instance_place(x, y+1, obj_terrain_rotating_platform)) {
	sprite_index = spr_player_in_air
} else {
	sprite_index = spr_player
}
}	
// Conveyor Belt Rules
if(instance_exists(obj_terrain_conveyor_right)) {
for(i=abs(obj_terrain_conveyor_right.move_distance); i > 0; i--) {
if(instance_place(x, y+1, obj_terrain_conveyor_right) and !instance_place(x+i,y,obj_terrain)) {
x = x+i
break
}
}
}
if(instance_exists(obj_terrain_conveyor_left)) {
for(i=abs(obj_terrain_conveyor_left.move_distance); i > 0; i--) {
if(instance_place(x, y+1, obj_terrain_conveyor_left) and !instance_place(x-i,y,obj_terrain)) {
x = x-i
break
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
// End code here.
}
show_debug_message(can_dash)