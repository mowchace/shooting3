//Damege object
var _damegepoint = floor(damegePoint+attack/10);
if(other == creater || other.faction == faction) _damegepoint= floor(_damegepoint/3);
create_damege(_damegepoint,other,direction)

if(cooltime < 0){
	create_damege(_damegepoint,other,direction);
	cooltime = 5;
}
