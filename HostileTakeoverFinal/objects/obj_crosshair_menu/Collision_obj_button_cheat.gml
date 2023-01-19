/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button(mb_left)) {
	global.total_score = 0
	global.cheating = true
	global.damage_counter = 0
	room_goto(other.button_destination)
}

