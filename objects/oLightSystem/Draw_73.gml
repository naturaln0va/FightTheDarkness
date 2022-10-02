if surface_exists(surf) {
	draw_surface(surf, 0, 0);
}

with oTimer {
	draw_set_font(fMain);
	draw_set_halign(fa_left);
	draw_text(other.hudPadding, other.hudPadding, "Timer: " + string(timer));
}

draw_set_font(fMain);
draw_set_halign(fa_right);
draw_text(room_width - hudPadding, hudPadding, "Score: " + string(score));

if global.showTutorial {
	draw_set_alpha(fadeValue / 100);
	draw_set_font(fMain);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_text(room_width / 2, room_height - hudPadding, "WSAD to move, point and click to shoot.");
	draw_set_valign(fa_top);
	draw_set_alpha(1);
}
