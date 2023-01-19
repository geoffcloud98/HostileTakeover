/// @description Insert description here
// You can write your code in this editor
// True if facing left, will turn to false if player is on right.
player_on_left = true
// Multiply Move Speed by Image X Scale to get movement route in step.
movement_route = 0
// Gravity
gravity_direction = 270
// Switch that activates when too close.
is_too_close = false
// Shooting
alarm_set(0, shot_interval)
// Inherit the parent event
event_inherited();

