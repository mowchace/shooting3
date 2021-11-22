function create_dash_exhaust(_string_objname){
		var _len = sprite_height/2;
		var _XX = x - lengthdir_x(_len,point_direction(x,y,mouse_x,mouse_y))+irandom_range(-5,5);
		var _YY = y - lengthdir_y(_len,point_direction(x,y,mouse_x,mouse_y))+irandom_range(-5,5);
		create_particles(_XX,_YY,0,_string_objname);
}