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
	range_plus = 30;
	spd = normal_speed;
	alert_flag = true;
	alert_time = room_speed;
	create_emotion(emotion.alertextensyon);
	if(attribute == "Iron"){
		audio_play_sound(choose(SE_gunhit_metal1,SE_gunhit_metal2,SE_gunhit_metal3),0,0)
		if(other.Characteristic == "normal"){
			other.damegePoint_Calculated_value /= 2;
			//if characte position (direction > 315 || direction <= 45.direction)||(direction > 135 && direction <= 225)
			//direction + 180.else + 360
			var _dir = 0
			if(direction > 315 || direction <= 45)||(direction > 135 && direction <= 225)
			{_dir = 0}else{_dir = 90};
			_dir += _dir+irandom_range(-10,10);
			create_range_attack(obj_reflect,attack,other.direction+_dir,other.speed,faction,id,noone,attack_positionX,attack_positionY,attack_particlepositionX,attack_particlepositionY);
		}
	}
}
create_damege(damegePoint_Calculated_value,fixed_damage,other,direction)
audio_play_sound(hit_SE,0,0);
instance_destroy();