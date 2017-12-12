 ///scr_ground_mob_agro_state
/// Move 10% to the player
scr_check_for_player();

//mp_potential_step(obj_Test_Player1.x,obj_Test_Player1.y,1,true); 
// moves object towards player in the x direction    

        dir = sign(targetx - x)
        image_xscale = dir*-1;
        if(image_xscale <= 0.5)
        {   
                
            image_xscale = -1;
            hsp =  dir*1;
        }
        else
        hsp =  dir*1;
        
        x += hsp;
        if (distance_to_object(obj_Test_Player1) > 128){ 
       
        state = scr_ground_mob_idle_state;
          }
