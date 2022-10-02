/// @description Draw
// Created by Ryan Ackermann

draw_set_font(fMain);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(room_width / 2, room_height / 2, "Score: " + string(scoreToShow) + "\nHighscore: " + string(global.highscore) + "\n\nPress SPACE to try again.");
draw_set_valign(fa_top);
