/// @description Init
// Created by Ryan Ackermann

if score > global.highscore {
	global.highscore = score;
	updateHighScore();
}

scoreToShow = score;
score = 0;
