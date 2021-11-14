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