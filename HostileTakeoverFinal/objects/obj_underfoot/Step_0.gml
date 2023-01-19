/// @description Stay under player
// You can write your code in this editor
// Object exists for to be invisible and handle exceptions.
if(instance_exists(obj_player)) {
// Follow player
x = obj_player.x - 128
y = obj_player.y + 129

// Ground collision
if(place_meeting(x, y, obj_terrain) or place_meeting(x,y,obj_terrain_rotating_platform)) {
	obj_player.can_jump = true
	obj_player.hit_ground = true
	obj_player.can_double_jump = true
} else {
	obj_player.can_jump = false
	}
	//Rotating Platform Rules
if(instance_place(x,y,obj_terrain_rotating_platform)) {
	obj_player.gravity = 0
		obj_player.hit_ground = true
		obj_player.can_double_jump = true
if(!(obj_player.vspeed < 0)) {
obj_player.vspeed = clamp(obj_player.vspeed, obj_player.jump_height, 0)
if(instance_place(x, y, obj_terrain_rotating_platform) and !instance_place(x, y, obj_terrain)) obj_player.y += 2
}
} else if(instance_place(x, y-1, obj_terrain_rotating_platform)) obj_player.gravity = 1.2
// End Rotating Platform Rules
} else {
// Destroy if player does not exist
instance_destroy()
}

