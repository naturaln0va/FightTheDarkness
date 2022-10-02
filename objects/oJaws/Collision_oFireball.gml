
hp--;
if hp == 0 {
	score += 2;
	instance_destroy();
	audio_play_sound(aPoof, 5, false);
	
	with oPlayer {
		lightStrength += 0.1;
	}
}

instance_destroy(other);
audio_play_sound(aFlame, 2, false);
