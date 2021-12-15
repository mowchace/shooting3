/// @description

//Check faction
if(other == creater || other.faction == faction) exit;
//Damege object
var _damegepoint = floor(damegePoint*attack/10);
create_damege(_damegepoint,other,direction)
create_particles(x+irandom_range(0,gunhit_rangeplus),y+irandom_range(-gunhit_rangeplus,0),direction,"obj_gunhit");
if((direction > 315 || direction <= 45) || (direction > 135 && direction <= 225)){
	direction += 180;
}
with(other){
	if(attribute == "Iron"){
		create_attack(obj_reflect,_damegepoint/2+Dexterity_MeeleeATK,-other.direction+irandom_range(-45,45),other.speed,faction,id,noone,attack_positionX,attack_positionY,attack_particlepositionX,attack_particlepositionY);
	}else{
		audio_play_sound(hit_SE,0,0);
	}
}
instance_destroy();