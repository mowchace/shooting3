if(instance_exists(obj_player)){
	obj_player.attack += other.EXP*0.1;
	create_particles(x,y,0,particleName);
	with (obj_game){score += other.EXP;}
}