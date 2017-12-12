///scr_mob_wander_state
scr_check_for_player();

 dir = (sign(targetx - x))
        image_xscale = dir*-1;
        if(image_xscale <= 0.5)
        {   
                
            image_xscale = -1;
            hsp =  dir*1;
        }
        else
        hsp =  dir*1;
        
        x+= hsp;
        
 
