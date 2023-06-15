function create_damege(_damegepoint,_fixeDamege,_obj,_direction){
	//damegevariable
	//start amount_damage
	var _damege_amount;
	//add fixed damage
	var _addfixed_damege_amount
	//final give damege
	var _final_damage_amount;
	//damege calculation process
	with (_obj) {
		if(object_index != obj_player){
			#region others procces section
			//change direction of attack
			direction = _direction-180;
			range_direction = direction;
			health_bar_draw = true;
			//degrese damage procces.if less 0.damage point 0
			_damege_amount = round(_damegepoint-DEF);
			if(_damege_amount <= 0){_damege_amount = 0}
				_addfixed_damege_amount = _damege_amount+_fixeDamege;
				//if damege value more 1.process start
			if(_addfixed_damege_amount >= 1){
				//hide attack check
				if(attack_flag == false && other.hideattack == true){
					_final_damage_amount = _damege_amount*2+_fixeDamege;
				}else{
					_final_damage_amount = _addfixed_damege_amount;
				}
				//HP decrease process
				flash = 3;
				create_damege_font(x,y,_final_damage_amount);
				HP -= _final_damage_amount;
				if(HP <= 0){
					instance_destroy();
				}
			}else{
				//if no damage.procces end;
				exit;
			}
		#endregion
		}else{
			#region player procces section
			//degrese damage procces.if less 0.damage point 0
			_damege_amount = round(_damegepoint-obj_players_status.DEF);
			if(_damege_amount <= 0){_damege_amount = 0}
				_addfixed_damege_amount = _damege_amount+_fixeDamege;
				//if damege value more 1.process start
			if(_addfixed_damege_amount >= 1){
				_final_damage_amount = _addfixed_damege_amount;
				//HP decrease process
				flash = 3;
				create_damege_font(x,y,_final_damage_amount);
				obj_players_status.HP -= _final_damage_amount;
				if(obj_players_status.HP <= 0){
					instance_destroy();
				}
			}else{
				//if no damage procces end;
				exit;
			}
			#endregion
		}
	}
}