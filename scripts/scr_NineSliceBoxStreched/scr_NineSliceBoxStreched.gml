function NineSliceBoxStreched(_spr,_X1,_Y1,_X2,_Y2,_image_index){
	var _size = sprite_get_width(_spr)/3;
	var _w = _X2-_X1;
	var _h = _Y2-_Y1;
	// MIDDLE
	draw_sprite_part_ext(_spr,_image_index,_size,_size,1,1,_X1+_size,_Y1+_size,_w-(_size*2),_h-(_size*2),c_white,1);
	
	// CORNERS
	// top left
	draw_sprite_part(_spr,_image_index,0,0,_size,_size,_X1,_Y1);
	// top right
	draw_sprite_part(_spr,_image_index,_size*2,0,_size,_size,_X1+_w-_size,_Y1);
	// bottom left
	draw_sprite_part(_spr,_image_index,_size*2,0,_size,_size,_X1,_Y1+_h-_size);
	//bottom right
	draw_sprite_part(_spr,_image_index,_size*2,_size*2,_size,_size,_X1+_w-_size,_Y1+_h-_size);
	
	// EDGES
	//left edge
	draw_sprite_part_ext(_spr,_image_index,0,_size,_size,1,_X1,_Y1+_size,1,_h-(_size*2),c_white,1);
	//right edge
	draw_sprite_part_ext(_spr,_image_index,_size*2,_size,_size,1,_X1+_w-_size,_Y1+_size,1,_h-(_size*2),c_white,1);
	//top edge
	draw_sprite_part_ext(_spr,_image_index,_size,0,1,_size,_X1+_size,_Y1,_w-(_size*2),1,c_white,1);
	//bottom edge
	draw_sprite_part_ext(_spr,_image_index,_size,_size*2,1,_size,_X1+_size,_Y1+_h-(_size),_w-(_size*2),1,c_white,1);
}