function move_shadow(){
	with(collision_instance_id){
		x += other.moveX;
		y += other.moveY;
	}
}