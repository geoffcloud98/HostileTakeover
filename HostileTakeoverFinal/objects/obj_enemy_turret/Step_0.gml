/// @description Face the player
// You can write your code in this editor
if(instance_exists(obj_player)) {
direction = point_direction(x,y, obj_player.x, obj_player.y)
}
image_angle = direction - 90;

if(image_index == 3) {
	instance_create_layer(x, y, "Attacks", obj_bullet_enemy)
	sprite_index = spr_turret
}