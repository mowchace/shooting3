function create_damege(_damegepoint,_obj,_direction){
	with (_obj) {
		var _damege = _damegepoint-DEF;
		if(_damege <= 0){_damege = 0};
		if(object_index != obj_player){
			if(attack_flag == false && other.hideattack == true){
				_damegepoint *= 2;
			}
		}
		HP -= _damege
		direction = _direction+180;
		range_direction = direction;
		flash = 3;
	}
	create_damege_font(x,y,_damegepoint)
}