/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)) {
draw_healthbar(32,64,320,96,obj_player.health,c_black,c_red,c_lime,0,true,true)
draw_text(32, 32, "Score: " + string(global.total_score))
}
if(instance_exists(obj_enemy_boss)) {
draw_text(1012, 32, "Boss")
draw_healthbar(1012,64,1300,96,obj_enemy_boss.health,c_black,c_red,c_lime,0,true,true)
}
