//Damege calculated
damegePoint_Calculated_value = floor(damegePoint*attack/10);
//Check faction
if(other == creater || other.faction == faction) exit;
//Damege object
create_particles(x+irandom_range(0,gunhit_rangeplus),y+irandom_range(-gunhit_rangeplus,0),direction,"obj_gunhit");


with(other){
	//obj_par_nutral type is Iron.create reflect attack
	if(attribute == "Iron"){
		if(other.Characteristic == "normal"){
			other.damegePoint_Calculated_value /= 2;
			create_reflect_attack(other.damegePoint_Calculated_value/2,other.direction,other.speed,0,faction,id,attack_positionX,attack_positionY);
		}
	}
}
create_damege(damegePoint_Calculated_value,fixed_damage,other,direction)
audio_play_sound(hit_SE,0,0);
instance_destroy();