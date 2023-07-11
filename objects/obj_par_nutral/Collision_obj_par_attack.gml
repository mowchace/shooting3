with(other){
	//switch bomb attack procces
	if(object_index == obj_bomb){
		//----bomb attack procces
		//if geted bomb id = this object id.create_damage procces throu.
		if(id != other.get_bomb_id){
			//Damege calculated
			damegePoint_Calculated_value = floor(damegePoint*attack/10);
			show_debug_message("damegePoint_Calculated_value = "+string(damegePoint_Calculated_value));
			show_debug_message("fixed_damage = "+string(fixed_damage));
			show_debug_message("other = "+string(other));
			create_damege(damegePoint_Calculated_value,fixed_damage,other,direction);
			
			other.get_bomb_id = id
			audio_play_sound(hit_SE,0,0);
			
			//create reflect attack
			with(other){
				if(attribute == "Iron"){
					if(other.Characteristic == "normal"){
						other.damegePoint_Calculated_value /= 2;
						create_reflect_attack(other.damegePoint_Calculated_value/2,other.direction,irandom_range(10,20),0,faction,id,attack_positionX,attack_positionY);
					}
				}
			}
		}
	}else{
		//----normal bullet procces
		//Check faction
		if(other == creater || other.faction == faction) exit;
		//Damege calculated
		damegePoint_Calculated_value = floor(damegePoint*attack/10);
		//Damege object
		create_particles(x+irandom_range(0,gunhit_rangeplus),y+irandom_range(-gunhit_rangeplus,0),direction,"obj_gunhit");
		//hit SE active
		audio_play_sound(hit_SE,0,0);
		with(other){
			//obj_par_nutral type is Iron.create reflect attack
			if(attribute == "Iron"){
				if(other.Characteristic == "normal"){
					other.damegePoint_Calculated_value /= 2;
					create_reflect_attack(other.damegePoint_Calculated_value/2,other.direction,other.speed,0,faction,id,attack_positionX,attack_positionY);
				}
			}
		}
		//create damage script
		create_damege(damegePoint_Calculated_value,fixed_damage,other,direction)
		instance_destroy();
	}
}