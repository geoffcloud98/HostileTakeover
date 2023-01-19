/// @description Go to room destination.
// You can write your code in this editor
if(mouse_check_button(mb_left) and can_click) {
	global.total_score = 0
	global.damage_counter = 0
	room_goto(other.button_destination)
}
if(mouse_check_button(mb_right) and can_click) {
global.total_score = 0
global.damage_counter = 0
global.dash_cheat = true
global.jump_cheat = true
global.invincibility_cheat = true
global.bullet_cheat = true
room_goto(other.button_destination)
}