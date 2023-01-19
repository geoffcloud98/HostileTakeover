self.health -= other.damage
instance_destroy(other)
if(self.health <= 0) instance_destroy()
