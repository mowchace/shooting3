function enemy_state_attack(){
	/*if(my_slash == noone){
		my_slash = instance_create_layer(
			x+image_xscale*16,y,"Instances",obj_meat
		);
		my_slash.creater = id;
		my_slash.image_xscale = image_xscale;
		image_index = 0;
	}
	
	//Transition Triggers
	if(image_index > image_number-1){state = states.alert;}
	*/
	if(instance_exists(obj_par_ally)){
		var inst = collision_line(x,y,obj_par_ally.x,obj_par_ally.y,obj_par_nutral,false,true);
		var _dir = point_direction(x,y,obj_par_ally.x,obj_par_ally.y)
		direction = _dir;
		range_direction =_dir;
		moveX = lengthdir_x(spd,_dir);
		moveY = lengthdir_y(spd,_dir);
		// if collision_line is noone bigin attack
		//if(inst == noone){
			if(collision_circle(x,y,range_base,obj_player,0,0)){
				// Melee attack
				if(cooltime <= 0 && Meelatktype1 != -4){
					switch(Meelatktype1){
						case 22: create_melee_attack(Meelatktype1,attack,_dir,atkspd,faction,id,noone,attack_positionX,attack_positionY,attack_particlepositionX,attack_particlepositionY);break;
						default: create_range_attack(Meelatktype1,attack,_dir,atkspd,faction,id,noone,attack_positionX,attack_positionY,attack_particlepositionX,attack_particlepositionY);break;
						
					}
					cooltime = cooldown/3;	
				}
			} else {
				// Ranged attack
				// Rangeatktype1 = -4 == noone;
				if(cooltime <= 0 && Rangeatktype1 != -4){
					create_range_attack(Rangeatktype1,attack,_dir,atkspd,faction,id,noone,attack_positionX,attack_positionY,attack_particlepositionX,attack_particlepositionY);
					cooltime = cooldown;
				}
			}
		//}
		//Transition Triggers
		if(!collision_circle(x,y,(range_base+range_plus)*4-range_minus,obj_player,0,0)){
			state = states.alert;
		}
	}else{
		state = states.idle;
	}
	//Sprite
	//sprite_index = spr_attack;
}