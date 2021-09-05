if(HP <= 0){
	audio_play_sound(SE,1,0);
	instance_destroy();
	obj_player.attack += other.EXP*0.1;
	create_particles(x,y,0,particleName);
	with (obj_game){score += other.EXP;}
}