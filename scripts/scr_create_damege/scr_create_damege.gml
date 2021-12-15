function create_damege(_damegepoint,_obj,_direction){
	var _damege;
	with (_obj) {
		 _damege =	round(_damegepoint-DEF);
		if(_damege <= 0){_damege = 0};
		if(object_index != obj_player){
			show_debug_message("here")
			if(attack_flag == false && other.hideattack == true){
				show_debug_message("_damegepoint brefore:"+string(_damege));
				_damege *= 2;
				show_debug_message("_damegepoint after:"+string(_damege));
			}
			direction = _direction+180;
			range_direction = direction;
		}
		HP -= _damege
		flash = 3;
	}
	if(_damege > 0){
		create_damege_font(x,y,_damege)
	}
}