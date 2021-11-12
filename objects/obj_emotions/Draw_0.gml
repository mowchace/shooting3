switch(changeemotion){
	case emotion.question:	draw_sprite_ext(spr_question,0,target.x,target.y-target.sprite_height,.3,.3,0,-1,1);break;
	case emotion.alertextensyon:	draw_sprite_ext(spr_extensyon,0,target.x,target.y-target.sprite_height,.3,.3,0,c_yellow,1);break;
	case emotion.attackextensyon:	draw_sprite_ext(spr_extensyon,0,target.x,target.y-target.sprite_height,.3,.3,0,c_red,1);break;
}