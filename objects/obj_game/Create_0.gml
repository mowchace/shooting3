global.gamePaused = false;
global.textSpeed = 0.75;
global.targetroom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = 0;

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
	enemy5 = obj_enemy5,
}

enum nutrals{
	nutral1 = obj_tree, 
	nutral2 = obj_stump, 
	nutral3 = obj_bigrock,
	nutral4 = obj_slicerock,
	nutral5 = obj_midlerock,
}
//surface_resize(application_surface,RESOLUTION_W,RESOLUTION_H);