/// @description Insert description here
// Created by Ryan Ackermann

score++;
instance_destroy();
audio_play_sound(aPoof, 5, false);

with oPlayer {
	lightStrength += 0.025;
}

with other {
	health--;
	if health == 0 {
		instance_destroy();
		audio_play_sound(aFlame, 2, false);
	}
}
