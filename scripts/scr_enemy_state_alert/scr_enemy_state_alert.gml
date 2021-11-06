function enemy_state_alert(){
	//Behaviour
	spd = r_spd;
	if(instance_exists(obj_par_ally)){
		my_dir = point_direction(x,y,obj_par_ally.x,obj_par_ally.y);
		range_direction = my_dir;
		moveX = lengthdir_x(spd,my_dir);
		moveY = lengthdir_y(spd,my_dir);
		
		//Transition Triggers
		if(!collision_circle(x,y,64,obj_player,0,0)){
			spd = w_spd;
			state = states.idle;
		}
		if(collision_circle(x,y,32,obj_player,0,0)){
			state = states.attack;
		}
	} else {
		state = states.idle;
	}
	//Sprite
	sprite_index = spr_enemy1;
	image_xscale = sign(moveX);
}