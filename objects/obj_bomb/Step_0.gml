/// @description
cooltime -= 1;
var _XX = other.x+irandom_range(-5,5);
var _YY = other.y+irandom_range(-5,5);
create_particles(_XX,_YY,0,"obj_bomb");
image_alpha -= 0.1;
if(image_alpha <= 0)instance_destroy();

