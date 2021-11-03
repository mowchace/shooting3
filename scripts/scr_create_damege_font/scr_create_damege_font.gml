function create_damege_font(_XX,_YY,_damegepoint){
	var _inst = instance_create_layer(_XX+irandom_range(-5,10),_YY+irandom_range(-10,-50),"Instances",obj_damege_Font)
	with (_inst){
		draw_message = _damegepoint;
		size = 1;
	};
}