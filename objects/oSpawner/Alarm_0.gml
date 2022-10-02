/// @description Birth
// Created by Ryan Ackermann

var spawnCount = max(birthMin, floor(rate * birthMagnitude));
repeat spawnCount {
	spawn();
}

alarm[1] = room_speed * birthDelay;
