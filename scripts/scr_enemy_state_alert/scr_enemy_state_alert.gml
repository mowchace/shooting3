function enemy_state_alert(){
	//Behaviour
	if(instance_exists(obj_par_ally)){
		var _dir = point_direction(x,y,obj_par_ally.x,obj_par_ally.y);
		moveX = lengthdir_x(spd,_dir);
		moveY = lengthdir_y(spd,_dir);
		range_direction = _dir;
		direction = _dir
		//Transition Triggers
		if(!collision_circle(x,y,range_base*2+range_plus-range_minus,obj_player,0,0)){
			state = states.idle;
		}
		if(collision_circle(x,y,range_base+range_plus-range_minus,obj_player,0,0)){
			attack_flag = true;
			attack_time = room_speed*10;
			range_plus = Alert_range_plus;
			spd = n_spd * r_spd;
			state = states.attack;
		}
	} else {
		state = states.idle;
	}
	//Sprite
	//sprite_index = spr_alert;
	//image_xscale = sign(moveX);
}