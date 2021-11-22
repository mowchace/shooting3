function draw_flash(){
	// 敵スプライトの描画
	draw_self();
	//攻撃命中時白く発光
	if(flash > 0){
		flash -= 1;
		shader_set(shwhite);
		draw_self();
		shader_reset();
	}
}