var _damegepoint = floor(damegePoint + global.attack);
with (other) {
	HP -= _damegepoint
}
with instance_create_layer(other.x+irandom_range(-5,10),other.y+irandom_range(-10,-50),"Instances",obj_damege_Font)
	{
		draw_message = _damegepoint;
		size = 1;
	};