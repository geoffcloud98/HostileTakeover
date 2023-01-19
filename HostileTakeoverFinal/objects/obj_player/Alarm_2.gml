/// @description Dash Duration
is_dashing = false

// If cheating, cooldown is 2 frames
if(!global.dash_cheat) {
alarm_set(0, dash_cooldown)
} else {
alarm_set(0, 2)
}