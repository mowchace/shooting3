//Damege object
damegePoint_Calculated_value = floor(damegePoint+attack/10);
if(other == creater || other.faction == faction) _damegepoint= floor(_damegepoint/3);

if(cooltime < 0){
	create_damege(damegePoint_Calculated_value,fixed_damage,other,direction);
	cooltime = 5;
}

audio_play_sound_at(hit_SE,x,y,0,1,1,0,0,0);