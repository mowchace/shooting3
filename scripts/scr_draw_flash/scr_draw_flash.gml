function draw_flash(_spriteType){
	//no 8direction sprite
	if(_spriteType == noone){
		//draw sprite
		draw_self();
		//do frash when take attack
		if(flash > 0){
			flash -= 1;
			shader_set(shwhite);
			draw_self();
			shader_reset();
		}
	//8direction sprite
	}else{
		//do frash when take attack
		if(flash > 0){
			flash -= 1;
			shader_set(shwhite);
			shader_reset();
		}
	}
}