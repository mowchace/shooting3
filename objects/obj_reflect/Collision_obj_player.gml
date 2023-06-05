//Damege calculated
damegePoint_Calculated_value = floor(damegePoint*attack/10);
//Check ID only
if(other.id == creater) exit;

create_particles(x+irandom_range(0,gunhit_rangeplus),y+irandom_range(-gunhit_rangeplus,0),direction,"obj_gunhit");

with(other){
	if(attribute == "Iron" && other.reflect_num <= 4){
		//make player attack power/2 bullet
		other.damegePoint_Calculated_value /= 2;
		create_reflect_attack(RangeATK,other.direction,other.speed,other.reflect_num,faction,id,attack_positionX,attack_positionY);
	}
}
//player take damege point
create_damege(damegePoint_Calculated_value,fixed_damage,other,direction)
audio_play_sound(hit_SE,0,0);
instance_destroy();