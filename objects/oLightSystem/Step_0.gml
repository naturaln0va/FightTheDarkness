if not surface_exists(surf) {
	surf = surface_create(room_width, room_height);
}

surface_set_target(surf);
draw_clear_alpha(c_black, 1);

#region player
with oPlayer {
	gpu_set_blendmode(bm_subtract);
	
	var mid_y = y - sprite_height / 2;
	
	draw_set_alpha(0.75);
	var wobble = (150 * lightStrength) + random_range(-0.75, 0.75);
	draw_circle(x, mid_y, wobble, false);
	
	draw_set_alpha(1);
	var wobble = (128 * lightStrength) + random_range(-1, 1);
	draw_circle(x, mid_y, wobble, false);
	
	other.globalLight = other.globalLightMin + ((1 - other.globalLightMin) * (1 - lightStrength));
}
#endregion

#region fireballs
with oFireball {
	gpu_set_blendmode(bm_subtract);
	draw_set_alpha(0.75);
	
	var wobble = 16 + random_range(-0.75, 0.75);
	draw_circle(x, y, wobble, false);
}
#endregion

#region embers
with oEmber {
	gpu_set_blendmode(bm_subtract);
	
	var mid_y = y - sprite_height / 2;
	
	draw_set_alpha(0.75);
	var wobble = 5 + random_range(-0.75, 0.75);
	draw_circle(x, mid_y, wobble, false);
}
#endregion

#region tutorial
if global.showTutorial and shouldFade and fadeValue > 0 {
	fadeValue--;
	if fadeValue == 0 {
		global.showTutorial = false;
	}
}
#endregion

#region reset
draw_set_alpha(globalLight);
gpu_set_blendmode(bm_normal);
surface_reset_target();
#endregion
