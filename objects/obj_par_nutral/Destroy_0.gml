event_inherited();
audio_play_sound(SE,1,0);
create_particles(x,y,0,particleName);
if(create_instance != noone){
	destroy_create_enemy(x,y,create_instance,respawn_instance_num)
}
if(instance_exists(obj_player)){
	with(obj_players_status){
		EXP += other.EXP;
		if(EXP >= NextLevelEXP){
			Levelup(obj_players_status);
		}
	}
}