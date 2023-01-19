/// @description Cheat Codes
// You can write your code in this editor
// Invinicibility
if(keyboard_check(ord("I"))) {
global.invincibility_cheat = true
global.total_score = 0
global.damage_counter = 0
room_goto(button_destination)
}
// Dash (NOT D BECAUSE WASD)
if(keyboard_check(ord("R"))) {
global.dash_cheat = true
global.total_score = 0
global.damage_counter = 0
room_goto(button_destination)
}
// Bullet
if(keyboard_check(ord("B"))) {
global.bullet_cheat = true
global.total_score = 0
global.damage_counter = 0
room_goto(button_destination)
}
// Jump
if(keyboard_check(ord("J"))) {
global.jump_cheat = true
global.total_score = 0
global.damage_counter = 0
room_goto(button_destination)
}
