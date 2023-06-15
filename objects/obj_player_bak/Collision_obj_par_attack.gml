//Damege calculated
with(other){
	//switch bomb attack procces
	if(object_index == obj_bomb){
		//----bomb attack procces
		//if geted bomb id = this object id.create_damage procces throu.
		if(id != other.get_bomb_id){
			//Damege calculated
			damegePoint_Calculated_value = floor(damegePoint*attack/10);
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
		damegePoint_Calculated_value = floor(damegePoint*attack/10);
		//Check faction
		if(other == creater || other.faction == faction) exit;
		//create hit particle
		create_particles(x+irandom_range(0,gunhit_rangeplus),y+irandom_range(-gunhit_rangeplus,0),direction,"obj_gunhit");
		//bullet rifrect procces
		with(other){
			//if player stutas type is Iron.create reflect attack
			if(attribute == "Iron" && other.Characteristic == "normal"){
				other.damegePoint_Calculated_value /= 2;
				create_reflect_attack(RangeATK,other.direction,other.speed,0,faction,id,attack_positionX,attack_positionY);
			}
		}
		create_damege(damegePoint_Calculated_value,fixed_damage,other,direction)
		audio_play_sound(hit_SE,0,0);
		instance_destroy();
	}
}