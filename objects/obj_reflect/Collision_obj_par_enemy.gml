//Damege calculated
damegePoint_Calculated_value = floor(damegePoint*attack/10);
//Check creater only
if(other.id == creater) exit;
//Damege object
create_particles(x+irandom_range(0,gunhit_rangeplus),y+irandom_range(-gunhit_rangeplus,0),direction,"obj_gunhit");

with(other){
	//enemys alert on
	range_plus = 30;
	spd = normal_speed;
	alert_flag = true;
	alert_time = room_speed;
	create_emotion(emotion.alertextensyon);
	//reflect bullet create.max reflect num 4
	if(attribute == "Iron" && other.reflect_num <= 4){
		if(other.Characteristic == "normal"){
			//make obj attack power/2 bullet
			other.damegePoint_Calculated_value /= 2;
			create_reflect_attack(attack,other.direction,other.speed,other.reflect_num,faction,id,attack_positionX,attack_positionY);
		}
	}
}
create_damege(damegePoint_Calculated_value,fixed_damage,other,direction)
audio_play_sound(hit_SE,0,0);
instance_destroy();