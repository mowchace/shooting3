function enemy_state_alert(){
	if(global.enemystate != enemy_state.Alert){
		global.enemystate = enemy_state.detect
	}
	//Behaviour
	if(instance_exists(obj_par_ally)){
		var _dir = point_direction(x,y,obj_par_ally.x,obj_par_ally.y);
		moveX = lengthdir_x(spd,_dir);
		moveY = lengthdir_y(spd,_dir);
		range_direction = _dir;
		direction = _dir
		//Transition Triggers
		var _range1 = range_base*2+range_plus-range_minus;
		if(_range1 <= range_base){_range1 = range_base;}
		if(!collision_circle(x,y,_range1,obj_player,0,0)){
			enemystate = states.idle;
		}
		var _range2 = range_base+range_plus-range_minus;
		if(_range2 <= range_base/4){_range2 = range_base/4;}
		if(collision_circle(x,y,_range2,obj_player,0,0)){
			attack_flag = true;
			attack_time = room_speed*10;
			range_plus = Alert_range_plus;
			spd = normal_speed * r_spd;
			enemystate = states.attack;
		}
	} else {
		enemystate = states.idle;
	}
	//Sprite
	//sprite_index = spr_alert;
	//image_xscale = sign(moveX);
}