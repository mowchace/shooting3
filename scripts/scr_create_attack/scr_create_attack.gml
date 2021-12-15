function create_attack(_objType,_atk,_dir,_spd,_faction,_id,_player_hide_state,_attackpositionX,_attackpositionY,_attackparticlepositionX,_attackparticlepositionY){
	// Empty cartridge case
	var _X_plus = lengthdir_x(sprite_width/2,_dir);
	var _Y_plus = lengthdir_y(sprite_height/3,_dir);
	var _particlepositionX = _attackparticlepositionX;
	var _particlepositionY = _attackparticlepositionY;
	_particlepositionX += _X_plus;
	_particlepositionY += _Y_plus;
	//if (_dir > 45 && _dir <= 135) {
	//	_particlepositionX = _particlepositionX+8;
	//} else if (_dir > 135 && _dir <= 225) {
	//	_particlepositionX = _particlepositionX;
	//} else if (_dir > 225 && _dir <= 315) {
	//	_particlepositionX = _particlepositionX-10;
	//} else if (_dir > 315 || _dir <= 45) {
	//	_particlepositionX = _particlepositionX;
	//}
//gunflash
	var _X_plus2 = lengthdir_x(sprite_width,_dir);
	var _Y_plus2 = lengthdir_y(sprite_height/2,_dir);
	var _particlepositionX2 = _attackparticlepositionX;
	var _particlepositionY2 = _attackparticlepositionY;

	_particlepositionX2 += _X_plus2;
	_particlepositionY2 += _Y_plus2;
	
// Create bullet particle
	var _inst;
	switch (_objType){
		case obj_bullet: {
			audio_play_sound(SE_gun_machingun,1,0);
			create_particles(_particlepositionX,_particlepositionY,_dir,object_get_name(_objType));
			create_particles(_particlepositionX2,_particlepositionY2,_dir,"obj_par_bullet");
			play_sound_after(SE_ammo,room_speed/2);
		}break;
		case obj_snipe: {
			audio_play_sound(SE_gun_rifle_shot_01,1,0);
			create_particles(_particlepositionX,_particlepositionY,_dir,object_get_name(_objType));
			create_particles(_particlepositionX2,_particlepositionY2,_dir,"obj_par_bullet");
			play_sound_after(SE_ammo,room_speed/2);
		}break;
		case obj_missile:{
			audio_play_sound(SE_canon,1,0);
		}break;
		case obj_par_bomb:{
			audio_play_sound(SE_bomb2,1,0);
		}break;
		case obj_reflect: {
			audio_play_sound(SE_bullet_reflect,1,0);
		}break;
	}
	_inst = instance_create_layer(_attackpositionX,_attackpositionY,"Instances",_objType);
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