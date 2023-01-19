/// @description Insert description here
// You can write your code in this editor
draw_self()
// Write number of units saved and number of turns.
draw_text(64, 32, "Battle Report")

draw_text(64, 96, "Final Score: " + string(global.total_score))

draw_text(64, 160, "You took damage " + string(global.damage_counter) + " times.")