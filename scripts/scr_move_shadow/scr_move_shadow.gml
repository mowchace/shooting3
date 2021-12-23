function move_shadow(){
	with(shadow_instance_id){
		x += other.moveX;
		y += other.moveY;
	}
}