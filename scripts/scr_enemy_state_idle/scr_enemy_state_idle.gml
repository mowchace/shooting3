function enemy_state_idle(){
	//Behaviour
	counter += 1;
	moveX = 0;
	moveY = 0;
	//Trandition Triggers
	if(counter >= room_speed*2){
		var _change = choose(0,1);
		switch(_change){
			case 0: enemystate =states.wander;
			case 1: counter = 0;break;
		}
	}
	if(instance_exists(obj_par_ally)){
		var _range = range_base+range_plus-range_minus;
		if(_range <= range_base/4){_range = range_base/4};
		// something find
		if(collision_circle(x,y,_range,obj_player,0,0)){
			var _inst1 = collision_line(x, y, obj_par_ally.x, obj_par_ally.y, obj_par_nutral, false, true);
			if(_inst1 == noone){
				enemystate = states.alert;
			}
		}
	}
	//Sprite
	//sprite_index = spr_idle;
}