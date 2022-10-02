
hp = 2;
openCount = 6;
openRemaining = 0;

image_speed = 0;
image_index = 0;

depth = -2500;

with oSpawner {
	other.speed = random_range(0.125, 0.275) + (rate * speedIncrease);
}

alarm[0] = room_speed * random_range(0.25, 1);