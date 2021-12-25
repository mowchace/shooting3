//Damege object
damegePoint_Calculated_value = floor(damegePoint+attack/10);
if(other == creater || other.faction == faction) _damegepoint= floor(_damegepoint/3);

if(cooltime < 0){
	create_damege(damegePoint_Calculated_value,other,direction);
	cooltime = 5;
}
