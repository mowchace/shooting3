//set the grid height
global.GRID_H = room_height / global.CELL;//512

//create the grid
global.layerGrid = ds_grid_create(1,global.GRID_H);

//create the layers and assign to a grid cell
for(var _i = 0;_i < global.GRID_H;_i++){
	global.layerGrid[# 0,_i] = layer_create(layer_get_depth("Instances")-_i);
	
}

//Extra space around the view
pixBuffer = 64;

//get the view X.Y
viewX = camera_get_view_x(view_camera[0]);
viewY = camera_get_view_y(view_camera[0]);


//create the rectangle around the view
global.layerControlviewXstart = max(viewX-pixBuffer,0);
global.layerControlviewYstart = max(viewY-pixBuffer,0);
global.layerControlviewXend = min(viewX+pixBuffer+camera_get_view_width(view_camera[0]),room_width);
global.layerControlviewYend = min(viewY+pixBuffer+camera_get_view_height(view_camera[0]),room_height);

//get the view last position
viewXlast = viewX;
viewYlast = viewY;