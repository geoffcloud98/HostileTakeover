/// @description Insert description here
// You can write your code in this editor
// More defense, must land 25 bullets
self.health -= (other.damage/5)
instance_destroy(other)
if(self.health <= 0) instance_destroy()

