/// @description Setup
// Created by Ryan Ackermann

spdBase = 1.25;
spd = spdBase;
hsp = 0;
vsp = 0;
cooldown = 0;
cooldownWait = 7;
lightStrength = 1;
minStrengthToFire = 0.2;

keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("D"), vk_right);