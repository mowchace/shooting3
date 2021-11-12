var col = c_white;
var _Searchplayerrange = Searchplayerrange-range_minus;
var _view_range = view_range-range_minus;
if(attack_flag) {
    // プレイヤーを見つけたら色を赤くする
    col = c_red;
}

// 敵スプライトの描画
//draw_sprite_ext(spr_base, image_index, x, y, 1, 1, 0, col, 1);
draw_self();
//攻撃命中時白く発光
if(flash > 0){
	flash -= 1;
	shader_set(shwhite);
	//draw_sprite_ext(spr_base, image_index, x, y, 1, 1, 0, col, 1);
	draw_self();
	shader_reset();
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


