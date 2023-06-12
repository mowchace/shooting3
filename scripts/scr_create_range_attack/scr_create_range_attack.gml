function create_range_attack_shot_gun(_objType,_atk,_shot_num,_dir,_spd,_faction,_id,_player_hide_state,_attackpositionX,_attackpositionY,_attackparticlepositionX,_attackparticlepositionY){
#region particle position settings
// Empty cartridge case
	var _X_plus = lengthdir_x(sprite_width/2,_dir);
	var _Y_plus = lengthdir_y(sprite_height/3,_dir);
	var _particlepositionX = _attackparticlepositionX;
	var _particlepositionY = _attackparticlepositionY;
	_particlepositionX += _X_plus;
	_particlepositionY += _Y_plus;
//gunflash
	var _X_plus2 = lengthdir_x(sprite_width,_dir);
	var _Y_plus2 = lengthdir_y(sprite_height/2,_dir);
	var _particlepositionX2 = _attackparticlepositionX;
	var _particlepositionY2 = _attackparticlepositionY;

	_particlepositionX2 += _X_plus2;
	_particlepositionY2 += _Y_plus2;
#endregion

#region set particle type and SE
	audio_play_sound(SE_gun_machingun,1,0);
	create_particles(_particlepositionX,_particlepositionY,_dir,object_get_name(_objType));
	create_particles(_particlepositionX2,_particlepositionY2,_dir,"obj_par_bullet");
	play_sound_after(SE_ammo,room_speed/2);
#endregion

var _inst;
repeat(_shot_num){
	//create bullet setting with Instance_layer
	_inst = instance_create_layer(_attackpositionX,_attackpositionY,"Instances",_objType);
	//add bullet status
	with (_inst){
		direction = _dir+random_range(-5,5);
		image_angle = _dir;
		baseSpeed = _spd;
		attack = _atk;
		faction = _faction;
		creater = _id;
		hideattack = _player_hide_state;
		if(faction == factions.enemy) image_blend = c_red;
	}
}
}