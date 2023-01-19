if(instance_exists(obj_player)) {
//gun direction faces cursor
direction = point_direction(x, y, obj_crosshair.x, obj_crosshair.y);

//follow the player around
//if player is facing left
if(obj_player.image_xscale == -1) {
	x = obj_player.x - 64;
	image_xscale = -1;
	image_angle = direction - 180;
	//if the gun direction is facing right, flip the gun sprite
	if(image_angle < -90 and image_angle > -180 or image_angle < 180 and image_angle > 90) {
		image_xscale = 1;
		image_angle += 180;
	}
} else {
	x = obj_player.x + 64
	image_xscale = 1;
	image_angle = direction;
	//if the gun direction is facing left, flip the gun sprite
	if(image_angle > 90 and image_angle < 270) {
		image_xscale = -1;
		image_angle += 180;
	}
}

y = obj_player.y;

//player shoot

} else {
instance_destroy()
}