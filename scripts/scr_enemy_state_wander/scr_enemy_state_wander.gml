function enemy_state_wander(){
	//Behaviour
	counter += 1;
	//Transition Triggers
	if(counter >= room_speed*3){
		var _change = choose(0,1);
		switch(_change){
			case 0:state = states.idle
			case 1:
			my_dir = irandom_range(0,359);
			moveX = lengthdir_x(spd,my_dir);
			moveY = lengthdir_y(spd,my_dir);
			counter = 0;
		}
	}
	if(instance_exists(obj_par_ally)){
		// something find
		if(collision_circle(x,y,range_base+range_plus+range_minus,obj_player,0,0)){
			var _inst1 = collision_line(x, y, obj_par_ally.x, obj_par_ally.y, obj_collision, false, true);
			if(_inst1 == noone){
				state = states.alert;
			}
		}
	}
	
	//Sprite
	//sprite_index = spr_wander;
	//image_xscale = sign(moveX);
}