/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button(mb_left) and can_click) {
	global.total_score = 0
	global.damage_counter = 0
	room_goto(other.button_destination)
}

