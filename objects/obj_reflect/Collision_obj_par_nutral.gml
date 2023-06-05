//Damege calculated
damegePoint_Calculated_value = floor(damegePoint*attack/10);
//Check ID only
if(other.id == creater) exit;

with(other){
	//reflect bullet create.max reflect num 4
	if(attribute == "Iron" && other.reflect_num <= 4){
			//make obj attack power/2 bullet
			other.damegePoint_Calculated_value /= 2;
			create_reflect_attack(other.damegePoint_Calculated_value,other.direction,other.speed,other.reflect_num,faction,id,attack_positionX,attack_positionY);
	}
}
create_damege(damegePoint_Calculated_value,fixed_damage,other,direction)
audio_play_sound(hit_SE,0,0);
instance_destroy();