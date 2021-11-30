function create_attack(_objType,_atk,_dir,_spd,_faction,_id,_player_hide_state){
	// Empty cartridge case
	var _X_plus = lengthdir_x(sprite_width/2,_dir);
	var _XX = x;
	var _YY = y-sprite_height/3;
	var _Y_plus = lengthdir_y(sprite_height/3,_dir);
	
	_XX += _X_plus;
	_YY += _Y_plus;
	//if (_dir > 45 && _dir <= 135) {
	//	_XX = _XX+8;
	//} else if (_dir > 135 && _dir <= 225) {
	//	_XX = _XX;
	//} else if (_dir > 225 && _dir <= 315) {
	//	_XX = _XX-10;
	//} else if (_dir > 315 || _dir <= 45) {
	//	_XX = _XX;
	//}
//gunflash
	var _X_plus2 = lengthdir_x(sprite_width,_dir);
	var _XX2 = x;
	var _YY2 = y-sprite_height/3;
	var _Y_plus2 = lengthdir_y(sprite_height/2,_dir);

	_XX2 += _X_plus2;
	_YY2 += _Y_plus2;
	
// Create bullet particle
	var _inst;
	switch (_objType){
		case obj_bullet: {
			audio_play_sound(SE_gun_machingun,1,0);
			create_particles(_XX,_YY,_dir,object_get_name(_objType));
			create_particles(_XX2,_YY2,_dir,"obj_par_bullet");
			play_sound_after(SE_ammo,room_speed/2);
		}break;
		case obj_snipe: {
			audio_play_sound(SE_gun_rifle_shot_01,1,0);
			create_particles(_XX,_YY,_dir,object_get_name(_objType));
			create_particles(_XX2,_YY2,_dir,"obj_par_bullet");
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
	_inst = instance_create_layer(x,y-5,"Instances",_objType);
	with (_inst){
		direction = _dir;
		image_angle = _dir;
		baseSpeed = _spd;
		attack = _atk;
		faction = _faction;
		creater = _id;
		if(faction == factions.enemy) image_blend = c_red;
		if(_player_hide_state == true) hideattack = true;
	}
	//if(_objType != "meeleattack"){
	//	var _inst = instance_create_layer(x,y-5,"Instances",obj_gunflash);
	//	direction = _dir;
	//	image_angle = _dir;
	//}
}