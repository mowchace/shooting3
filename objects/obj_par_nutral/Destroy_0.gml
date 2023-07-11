event_inherited();
audio_play_sound(SE,1,0);
create_particles(x,y,0,particleName);
if(instance_exists(obj_player)){
	with(obj_players_status){
		EXP += other.EXP;
		if(EXP >= NextLevelEXP){
			Levelup(obj_players_status);
		}
	}
}
if(create_object != noone && instance_count <= 100){
	var _flamewidth;
	var _flameheight;
	if(!sprite_8direction_switch){
		_flamewidth = sprite_width;
		_flameheight = sprite_height;
	}else{
		_flamewidth = sprite_get_width(spr_base)/4;
		_flameheight = sprite_get_height(spr_base)/8;
	}
	deth_and_create_object(x,y,_flamewidth,_flameheight,create_object,create_object_num);
}