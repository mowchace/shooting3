function create_bullet(_objType,_atk,_dir,_spd,_faction,_id,_player_hide_state){
	var _XX = x;
	var _YY = y-sprite_height/3;
	if (_dir > 45 && _dir <= 135) {
		_XX = x+8;
	} else if (_dir > 135 && _dir <= 225) {
		_XX = x;
	} else if (_dir > 225 && _dir <= 315) {
		_XX = x-10;
	} else if (_dir > 315 || _dir <= 45) {
		_XX = x;
	}
// Create bullet-ammo-particle	
	switch (_objType){
		case obj_bullet: {
			audio_play_sound(SE_gun_brust01,1,0);
			create_particles(_XX,_YY,_dir,object_get_name(_objType));
		}break;
		case obj_snipe: {
			audio_play_sound(SE_gun_rifle_shot_01,1,0);
			create_particles(_XX,_YY,_dir,object_get_name(_objType));
		}break;
		case obj_missile: audio_play_sound(SE_canon,1,0);break;
	}
	

	var _inst = instance_create_layer(x,y-5,"Instances",_objType);
	with (_inst){
		direction = _dir;
		image_angle = _dir;
		speed = _spd;
		attack = _atk;
		faction = _faction;
		creater = _id;
		if(faction == factions.enemy) image_blend = c_red;
		if(_player_hide_state == true) hideattack = true;
	}
}