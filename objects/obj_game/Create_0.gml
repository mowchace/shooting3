global.gamePaused = false;
global.textSpeed = 0.75;
Pausebltlife = 0;
Pausebltspeed = 0;
viewX = 0;
viewY = 0;

press_count = 0;
BGM = bgm_mm2battle;

randomize();

enum factions {
	nutral,
	ally,
	enemy,
}

enum enemys{
	enemy1 = obj_enemy1, 
	enemy2 = obj_enemy2, 
	enemy3 = obj_enemy3,
	enemy4 = obj_enemy4,
}
//surface_resize(application_surface,RESOLUTION_W,RESOLUTION_H);