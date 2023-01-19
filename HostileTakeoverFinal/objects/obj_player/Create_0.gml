/// @description Initialize parameters
gravity_direction = 270
// Variables for abilities
can_dash = true
dash_cooldown_over = false
canShoot = true
is_dashing = false
can_double_jump = true
invincibility_frame = false
// Hit ground sets a flag if you hit the ground while dash cooldown is happening, but jump before it finishes.
hit_ground = false
// can_jump is a fix using underfoot to be able to escape softlocks.
can_jump = false
// For Animation
animation_override = false
// Track y position for dashing
y_position = y
// Health
self.health = max_health
// Underfoot
if(!instance_exists(obj_underfoot)) instance_create_layer(x-128, y+129, "HUD", obj_underfoot)

//turn off cursor
window_set_cursor(cr_none);