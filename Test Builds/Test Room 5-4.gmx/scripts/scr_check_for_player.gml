///scr_check_for_player
if(instance_exists(obj_Test_Player1)){
    var dis = point_distance(x,y,obj_Test_Player1.x,obj_Test_Player1.y);
    if(dis < sight){
        state = scr_ground_mob_agro_state;
        targetx = obj_Test_Player1.x;
        targety = obj_Test_Player1.y;
    } else{
        scr_mob_choose_state();
    } 
     
}
else{
    scr_mob_choose_state();    
    }
