/// @description
with (other) {
	HP -= other.damagePoint;
}
with instance_create_layer(other.x+irandom_range(-5,10),other.y+irandom_range(-10,-50),"Instances",obj_damege_Font)
	{
		var _damegepoint = other.damagePoint;
		draw_message = _damegepoint;
		size = 1;
	};
instance_destroy();