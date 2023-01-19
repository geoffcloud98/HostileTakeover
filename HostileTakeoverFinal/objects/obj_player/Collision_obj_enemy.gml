// If Cheating, nothing happens.
if(!global.invincibility_cheat) {
if(not invincibility_frame) {
self.health-=other.collision_damage
if(self.health <= 0) instance_destroy()
invincibility_frame = true
alarm_set(3, invincibility_frame_length)
global.damage_counter = global.damage_counter + 1
}
} else {
// If cheating, destroy the enemy instead
instance_destroy(other)
}