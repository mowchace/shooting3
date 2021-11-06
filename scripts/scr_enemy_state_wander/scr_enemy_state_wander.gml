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
		var _Searchplayerrange = Searchplayerrange+range_plus-range_minus;
		var _view_range = view_range+range_plus-range_minus;
		// player seach start
		if(point_distance(x,y,obj_par_ally.x,obj_par_ally.y) < _Searchplayerrange){
			// Serch move
			var _x1 = lengthdir_x(1, range_direction);
			var _y1 = lengthdir_y(1, range_direction);
		
			var _x2 =  obj_par_ally.x - x;
			var _y2 =  obj_par_ally.y - y;
			// obj_par_ally distance
			var _dot = dot_product_normalized(_x1,_y1,_x2,_y2);
			// obj_par_ally direction
			var _deg = darccos(_dot);
			// player find
			if(_view_range > _deg ||collision_circle(x,y,64+range_plus+range_minus,obj_player,0,0)){
				var _inst1 = collision_line(x, y, obj_par_ally.x, obj_par_ally.y, obj_collision, false, true);
				//var _inst2 = collision_line(x, y, obj_par_ally.x, obj_par_ally.y, obj_faction, false, true);
				if(_inst1 == noone){
					state = states.alert;
					found_flag = true;
					range_plus = Alert_range_plus;
				}
			}
		}
		//if(collision_circle(x,y,64+range_plus+range_minus,obj_player,0,0)){
		//	state = states.alert;
		//}
	}
	
	//Sprite
	sprite_index = spr_enemy2;
	image_xscale = sign(moveX);
}