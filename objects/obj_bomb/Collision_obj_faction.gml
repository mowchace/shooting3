/// @description

//Check faction
var _damegepoint = floor(damegePoint+attack/10);
if(other == creater || other.faction == faction) _damegepoint= floor(_damegepoint/3);

//Damege object
if(cooltime < 0){
	create_damege(_damegepoint,other,direction);
	cooltime = 5;
}