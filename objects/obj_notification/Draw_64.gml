//Draw Notifications
var _not_grid = ds_notifications;
var _grid_height = ds_grid_height(_not_grid);
var c = c_white;
var _yy = 0; repeat(_grid_height){
	var _not_sign = "";
	if(_not_grid[# 0,_yy] > 0){_not_sign = "+";}
	draw_text_color(
		100,(gui_height/2)+(_yy*str_height)-(_grid_height*str_height),
		_not_sign + string(_not_grid[# 0,_yy]) + " " + string(_not_grid[# 1,_yy]),
		c,c,c,c,not_alpha
	);
	_yy++;
}

//Fade Away
if(fade_away) not_alpha -= 0.1;
if(not_alpha <= 0) instance_destroy();