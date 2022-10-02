/// @description Update
// Created by Ryan Ackermann

var key_up = keyboard_check(vk_up);
var key_down = keyboard_check(vk_down);
var key_right = keyboard_check(vk_right);
var key_left = keyboard_check(vk_left);
var mouse_left = mouse_check_button_released(mb_left);

if keyboard_check(ord("R")) room_restart();

var y_input_axis = key_down - key_up;
var x_input_axis = key_right - key_left;
var moving = key_down or key_up or key_right or key_left;

if moving or mouse_left {
	with oLightSystem {
		if not shouldFade {
			shouldFade = true;
		}
	}
}

#region limit diagonal speed
if (x_input_axis != 0 and y_input_axis != 0) {
 var length = sqrt(x_input_axis * x_input_axis + y_input_axis * y_input_axis);
 x_input_axis /= length;
 y_input_axis /= length;
}
#endregion

hsp = x_input_axis * spd;
vsp = y_input_axis * spd;

#region check horizontal collision
if place_meeting(x + hsp, y, oSolid) {
	while abs(hsp) > 0.1 {
		hsp *= 0.5;
		if (!place_meeting(x + hsp, y, oSolid)) x += hsp;
	}
	hsp = 0;
}
x += hsp;
#endregion

#region check vertical collision
if place_meeting(x, y + vsp, oSolid) {
	while abs(vsp) > 0.1 {
		vsp *= 0.5;
		if (!place_meeting(x, y + vsp, oSolid)) y += vsp;
	}
	vsp = 0;
}
y += vsp;
#endregion

#region shoot
if lightStrength > minStrengthToFire and cooldown == 0 and mouse_left {
	audio_play_sound(aToss, 1, false);
	with instance_create_layer(x, y - 16, "Instances", oFireball) {
		direction = point_direction(x, y - 16, mouse_x, mouse_y);
		image_angle = direction- 90;
	}
	cooldown = cooldownWait;
	lightStrength -= 0.1;
}
if lightStrength < minStrengthToFire {
	lightStrength = minStrengthToFire;
}
if cooldown > 0 {
	cooldown--;
}
#endregion