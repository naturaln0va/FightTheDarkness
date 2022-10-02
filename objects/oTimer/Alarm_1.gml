/// @description Finished
// Created by Ryan Ackermann

with oPlayer {
	audio_play_sound(aRekindle, 25, false);
	lightStrength = 1;
}

timer = maxTimer;
alarm[0] = room_speed;

with oSpawner {
	rate++;
}
