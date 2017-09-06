///scr_mask_state
if(instance_exists(obj_player_stats)){
    if(obj_player_stats.masknum = 1)
    {
    obj_player_stats.masknum = 0;
    instance_create(x,y,obj_shield_mask)
        with(obj_Test_Player1)
            {
                state = scr_move_state;
            }
    
    }
    alarm[2] = room_speed*2;








}
