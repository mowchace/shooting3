function create_damege_font(_XX,_YY,_damegepoint){
	var _inst = instance_create_layer(_XX+irandom_range(-5,10),_YY+irandom_range(-10,-50),"Instances",obj_damege_Font)
	var _size = .5;
	/*if((_damegepoint div 1000) >= 1){
		_size = .2
	} else if((_damegepoint div 1000) >= 1){
		_size = .3
	}*/
	with (_inst){
		draw_message = _damegepoint;
		size = _size;
	};
}