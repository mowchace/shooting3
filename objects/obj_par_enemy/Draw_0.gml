event_inherited();
var col = c_white;
var _Searchplayerrange = Searchplayerrange-range_minus;
if(_Searchplayerrange <= range_base/4){_Searchplayerrange = range_base/4;}
var _view_range = view_range-range_minus;
if(_view_range <= view_range/4){_view_range = view_range/4;}
if(attack_flag) {
    // プレイヤーを見つけたら色を赤くする
    col = c_red;
}

// 視界範囲の右側を線分で描画
var dx1 = lengthdir_x(_Searchplayerrange, range_direction-_view_range);
var dy1 = lengthdir_y(_Searchplayerrange, range_direction-_view_range);
draw_line_colour(x, y, x+dx1, y+dy1, col, col);

// 視界範囲の左側を線分で描画
var dx2 = lengthdir_x(_Searchplayerrange, range_direction+_view_range);
var dy2 = lengthdir_y(_Searchplayerrange, range_direction+_view_range);
draw_line_colour(x, y, x+dx2, y+dy2, col, col);

// 視界範囲の先端の左右をつなぐ
draw_line_colour(x+dx1, y+dy1, x+dx2, y+dy2, col, col);

// HPバー表示
healthbar_x = x;
healthbar_y = y-sprite_height*3/4;
draw_sprite_stretched(spr_healthbar,0,healthbar_x,healthbar_y,(HP/MaxHP)*healthbar_width,healthbar_height);

draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c_yellow,c_yellow,c_yellow,c_yellow,true);