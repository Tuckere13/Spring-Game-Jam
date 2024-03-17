hp = clamp(hp - 10 * (other.damage) * (defence), 0, max_hp);
instance_destroy(other);