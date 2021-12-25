//Damege calculated
damegePoint_Calculated_value = floor(damegePoint*attack/10);
//Check faction
if(other == creater || other.faction == faction) exit;
//Damege object

create_particles(x+irandom_range(0,gunhit_rangeplus),y+irandom_range(-gunhit_rangeplus,0),direction,"obj_gunhit");
if((direction > 315 || direction <= 45) || (direction > 135 && direction <= 225)){
	direction += 180;
}
with(other){
	if(attribute == "Iron" && other.Characteristic == "normal"){
		other.damegePoint_Calculated_value /= 2;
		create_range_attack(obj_reflect,RangeATK,-other.direction+irandom_range(-45,45),other.speed,faction,id,noone,attack_positionX,attack_positionY,attack_particlepositionX,attack_particlepositionY);
	}
}
create_damege(damegePoint_Calculated_value,other,direction)
audio_play_sound(hit_SE,0,0);
instance_destroy();