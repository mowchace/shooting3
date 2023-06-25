//get the view X.Y
viewX = camera_get_view_x(view_camera[0]);
viewY = camera_get_view_y(view_camera[0]);

//only update if we move
if(viewX != viewXlast || viewY != viewYlast){
	
	//create the rectangle around the view
	global.layerControlviewXstart = max(viewX-pixBuffer,0);
	global.layerControlviewYstart = max(viewY-pixBuffer,0);
	global.layerControlviewXend = min(viewX+pixBuffer+camera_get_view_width(view_camera[0]),room_width);
	global.layerControlviewYend = min(viewY+pixBuffer+camera_get_view_height(view_camera[0]),room_height);

	//activate all instance within the view
	instance_activate_region(global.layerControlviewXstart,global.layerControlviewYstart,global.layerControlviewXend,global.layerControlviewYend,true);

}

//get the view last position
viewXlast = viewX;
viewYlast = viewY;