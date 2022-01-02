if(room == rm_game){
	audio_play_sound(BGM,1,1);
	var _enemy = choose(enemys.enemy1,enemys.enemy2,enemys.enemy3);
	spawn_off_camera(_enemy,6);
	alarm[0] = 1;
}