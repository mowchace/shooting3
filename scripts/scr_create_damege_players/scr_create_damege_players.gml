function create_damege_players(_damegepoint,_fixeDamege,_obj,_direction){
	//total damegevariable
	var _damege_amount;
	//damege calculation process
	with (_obj) {
		//degrese damage procces.if less 0.damage point 0
		_damege_amount = round(_damegepoint-DEF);
		if(_damege_amount <= 0){_damege_amount = 0}
		//add fixed_damege
		var _fixed_damege_amount = _damege_amount+_fixeDamege;
		 //if damege value more 1.process start
		if(_fixed_damege_amount > 1){
			//hide attack check.
			var _final_damege_amount;
			if(attack_flag == false && other.hideattack == true){
				_final_damege_amount = _damege_amount*2+_fixeDamege;
			}else{
				_final_damege_amount = _fixed_damege_amount;
			}
			//change direction of attack
			direction = _direction-180;
			range_direction = direction;
			//HP decrease process
			HP -= _final_damege_amount;
			health_bar_draw = true;
			flash = 3;
			create_damege_font(x,y,_final_damege_amount)
		}
	}
}