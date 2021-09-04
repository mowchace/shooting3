/// @description
with(obj_particles){
	var _XX = other.x+irandom_range(-5,5);
	var _YY = other.y+irandom_range(-5,5);
	part_particles_create(partSys,_XX,_YY,partTypeExplode,1);
}
image_alpha -= 0.1;
if(image_alpha <= 0)instance_destroy();