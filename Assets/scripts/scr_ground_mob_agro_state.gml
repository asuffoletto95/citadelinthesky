///scr_ground_mob_agro_state
/// Move 10% to the player

scr_general_collisions();
//mp_potential_step(obj_Test_Player1.x,obj_Test_Player1.y,1,true); // moves object towards player in the x direction    

        dir = (sign(obj_Test_Player1.x - x))
        image_xscale = dir*-1;
        hsp =  dir*1;
        vsp = (min(7,vsp+0.05));
        x += hsp;
        if (distance_to_object(obj_Test_Player1) > 128){ 
       
        state = scr_ground_mob_idle_state;
          }
