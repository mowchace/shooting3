//check whether any part of instance is in the view area
if(	bbox_right >= global.layerControlviewXstart &&
	bbox_bottom >= global.layerControlviewYstart &&
	bbox_left <= global.layerControlviewXend &&
	bbox_top <= global.layerControlviewYend){
	//in view	
	if(!visible){
		visible = true;
		updatelayer();
	}
	alarm[11] = room_speed * 2
}else{
	//outside view
	visible = false
}
