
function updateHighScore() {
	ini_open("score.ini");
	var bestScore = ini_read_real("highscore", "score", 0);
	if global.highscore > bestScore {
		ini_write_real("highscore", "score", global.highscore);
		show_debug_message("Updated the highscore: " + string(global.highscore));
	}
	ini_close();
}

function loadHighScore() {
	ini_open("score.ini");
	global.highscore = ini_read_real("highscore", "score", 0);
	show_debug_message("Loaded the highscore: " + string(global.highscore));
	ini_close();
}