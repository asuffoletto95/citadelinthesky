///scr_attack
//checks weapon type first then plays animations accordinngly while stopping at last frame of annimation to avoid wated memory
//**note to self set this as a parent object in the future so that you wont have too keep typing this code out for every future ranged
//** or future melee type weapon.

//melee attacks
var tempdir = 0;
if(obj_Test_Player1.weapontype = melee){ // checks player attack type
  
  sprite_index = test_player_attack;
  if(image_index >= 20) and (image_index <=24)
  {
   with (instance_create(x,y,obj_hitbox))
            {
                image_xscale = other.image_xscale;
                with (instance_place(x,y,obj_ground_mob))
                {
                    if (hit == 0)
                    {
                        hit = 1;        
                        vsp = -3;
                        hsp = sign(x - other.x) * 4;
                        image_xscale = sign(hsp);
                    }
                }
            }
  }
 if(image_index == 28)
 state = scr_move_state;
 }
 
 
 //ranged attacks
 if(obj_Test_Player1.weapontype = ranged){// checks player attack type
   
    sprite_index = test_player_attack2;
    
    if(image_index == 19){
        if(other.image_xscale = 1)
    {
        instance_create((x+(other.dir*16)),y,obj_light_daggerR)
           tempdir = 1; 
          obj_light_daggerR.dir = tempdir; 
          alarm[0] = room_speed;
            
    }
        else
        {
        instance_create((x+(other.dir*16)),y,obj_light_daggerL)
             tempdir = -1
            obj_light_daggerL.dir = tempdir; 
               alarm[0] = room_speed;
            
        }
     }
     if(image_index ==23)
     state = scr_move_state;
 }
