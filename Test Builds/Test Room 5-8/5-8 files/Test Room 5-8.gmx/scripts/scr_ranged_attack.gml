///scr_ranged_attack
var tempdir = 0;
  
    sprite_index = test_player_ranged_attack;
    
    if(image_index == 5){
        if(other.image_xscale = 1)
    {
        instance_create((x+(other.dir*16)),y,obj_light_daggerR)
           tempdir = 1; 
          obj_light_daggerR.dir = tempdir; 
          
            
    }
        else
        {
        if(other.image_xscale = -1){
        instance_create((x+(other.dir*16)),y,obj_light_daggerL)
             tempdir = -1
            obj_light_daggerL.dir = tempdir; 
             }
            
        }
     }
     if(image_index ==11)
     state = scr_move_state;

