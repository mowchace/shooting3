function create_melee_attack(_objType,_atk,_dir,_spd,_faction,_id,_player_hide_state,_attackpositionX,_attackpositionY,_attackparticlepositionX,_attackparticlepositionY){
	// particle position
	var _X_plus = lengthdir_x(sprite_width,_dir);
	var _Y_plus = lengthdir_y(sprite_height,_dir);
	var _particlepositionX = _attackparticlepositionX;
	var _particlepositionY = _attackparticlepositionY;
	_particlepositionX += _X_plus;
	_particlepositionY += _Y_plus;

	// Create melee_attack particle
	var _inst,_spr,_width,_height;
	switch (_objType){
		case obj_punch: {
			audio_play_sound(SE_punch,1,0);
			_spr = spr_punching;
			_width = sprite_get_width(_spr)/2;
			_height = sprite_get_height(_spr)/2;
			create_particles(_particlepositionX,_particlepositionY,_dir,object_get_name(_objType));
		}break;
	}
	_inst = instance_create_layer(_attackpositionX+lengthdir_x(_width,_dir),_attackpositionY+lengthdir_y(_height,_dir),"Instances",_objType);
	with (_inst){
		direction = _dir;
		image_angle = _dir;
		baseSpeed = _spd;
		attack = _atk;
		faction = _faction;
		creater = _id;
		hideattack = _player_hide_state;
		if(faction == factions.enemy) image_blend = c_red;
	}
	//if(_objType != "meeleattack"){
	//	var _inst = instance_create_layer(x,y-5,"Instances",obj_gunflash);
	//	direction = _dir;
	//	image_angle = _dir;
	//}
}