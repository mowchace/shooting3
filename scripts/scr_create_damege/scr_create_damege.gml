function create_damege(_damegepoint,_obj,_direction){
	with (_obj) {
		if(object_index != obj_player){
			if(found_flag == false && other.hideattack == true){
				_damegepoint *= 2;
			}
		}
		HP -= _damegepoint
		direction = _direction+180;
		range_direction = direction;
	}
	create_damege_font(x,y,_damegepoint)
}