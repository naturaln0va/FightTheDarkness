/// @description Setup
// Created by Ryan Ackermann

rate = 0;
speedIncrease = 0.125;

birthDelay = 1.5;
birthRate = 1.75;
birthMin = 2;
birthMagnitude = 0.375;

targetWave = 16;

alarm[0] = room_speed / 2;

spawn = function() {
	var spawnBuffer = 50;
	var spawnX = 0;
	var spawnY = 0;
	if irandom(2) == 1 {
		spawnX = irandom(2) == 1 ? -spawnBuffer : room_width + spawnBuffer;
		spawnY = random_range(-spawnBuffer, room_height + spawnBuffer);
	} else {
		spawnX = random_range(-spawnBuffer, room_width + spawnBuffer);
		spawnY = irandom(2) == 1 ? -spawnBuffer : room_height + spawnBuffer;
	}
	// max spawn rate 0.45 for hard enemies
	var spawnChance = 0.975 - min(0.525, (0.525 * (rate / targetWave)));
	show_debug_message("Spawn chance: " + string(spawnChance));
	if random(1) < spawnChance {
		instance_create_layer(spawnX, spawnY, "Instances", oGoul);
	} else {
		instance_create_layer(spawnX, spawnY, "Instances", oJaws);
	}
};