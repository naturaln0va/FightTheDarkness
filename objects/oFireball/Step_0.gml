/// @description Insert description here
// Created by Ryan Ackermann

if x < -autoDestroyDistance or x > room_width + autoDestroyDistance {
	instance_destroy();
} else if y < -autoDestroyDistance or y > room_height + autoDestroyDistance {
	instance_destroy();
}

var spawnCount = irandom_range(0, 2);

repeat spawnCount {
	instance_create_layer(x, y, "Instances", oEmber);
}
