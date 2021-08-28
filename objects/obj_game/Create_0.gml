global.gamePaused = false;
gamePausedImage = 0;
viewX = 0;
viewY = 0;

global.playerHP = 0;
score = 0;
lives = 3;
randomize();

enum factions {
	nutral,
	ally,
	enemy,
}

enum enemys{
	enemy1 = obj_enemy2, 
	enemy2 = obj_enemy2, 
	enemy3 = obj_enemy3 
}