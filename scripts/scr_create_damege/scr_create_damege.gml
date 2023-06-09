function create_damege(_damegepoint,_fixeDamege,_obj,_direction){
	//total damegevariable
	var _damege;
	//damege calculation process
	with (_obj) {
		//degrese damage procces.if less 0.damage point 0
		_damege =	round(_damegepoint-DEF);
		if(_damege <= 0){_damege = 0}
		//add fixed_damege
		_damege += _fixeDamege;
		 //if damege value more 1.process start
		if(_damege > 1){
			if(object_index != obj_player){
				//hide attack check.
				if(attack_flag == false && other.hideattack == true){
					_damege *= 2;
				}
				//change direction of attack
				direction = _direction-180;
				range_direction = direction;
			}
			//HP decrease process
			HP -= _damege
			health_bar_draw = true;
			flash = 3;
			create_damege_font(x,y,_damege)
		};
		
		
		
	}
}