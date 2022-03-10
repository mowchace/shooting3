/// @description Insert description here
if(instance_exists(obj_player)&&position_meeting(obj_player.x,obj_player.y,id))
{
	if(!instance_exists(obj_transition_ShawnSpalding)){
		global.targetroom = targetRoom;
		global.targetX = targetX;
		global.targetY = targetY;
		global.targetDirection = obj_player.direction;
		//room_goto(targetRoom);
		//with(obj_player){state = playerstatetransition;}
		RoomTransition(TRANS_TYPE.SLIDE,targetRoom);
		instance_destroy();
	}
}