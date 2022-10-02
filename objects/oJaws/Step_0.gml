
with oPlayer {
	other.direction = point_direction(other.x, other.y, x, y);
}

if openRemaining > 0 {
	image_index = 1;
	openRemaining--;
	
	if openRemaining == 0 {
		image_index = 0;
		alarm[0] = room_speed * random_range(0.75, 1.5);
	}
}