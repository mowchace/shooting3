create_particles(x,y,0,particleName);
if(instance_exists(obj_player)){
	with(obj_player){
		attack += other.EXP;
		EXP += other.EXP;
		if(EXP >= NextLevelEXP){
			Levelup()
		}
	}
}