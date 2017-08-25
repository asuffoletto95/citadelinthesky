///scr_move_state
scr_get_input();

//React to inputs
image_speed = 1;
movespeed = 2;
move = key_left + key_right;
hsp = move * movespeed; 


scr_grav(); // applies gravity
 
if (place_meeting(x,y+1,obj_Test_Floor))
{
    sprite_index = test_player1_idle;
    vsp = key_jump * -jumpspeed;
}

//percision jumping     
if (vsp <0) and (!key_jump_held)
{
vsp = max(vsp,-jumpspeed/3)
}

// Horizontal Collision
if (place_meeting(x+hsp,y,obj_Test_Floor))
{
    while(!place_meeting(x+sign(hsp),y,obj_Test_Floor))//if one space left or right theres a wall space, move 1
    {
        x+= sign(hsp);
    }
    hsp= 0;
}
x += hsp;
// Vertical Collision 
if (place_meeting(x,y+vsp,obj_Test_Floor))
{
   repeat(1) instance_create(x,bbox_bottom,obj_dust);
    while(!place_meeting(x,y+sign(vsp),obj_Test_Floor))//if one space under or above theres wall  move 1
    {
        y+= sign(vsp);
    }
    vsp= 0;
 
}
y += vsp;

//Animations    
if (move!=0){
    image_xscale = move;
    obj_Test_Player1.dir = move;
}
if(place_meeting(x,y+1,obj_Test_Floor))//checks if player is grounded first
{ 

    if (move!=0)
    {   
    repeat(1) instance_create(x,bbox_bottom,obj_dust);
    sprite_index = test_player1_run2;
    }
 
}
else
{
    if(vsp < 0) sprite_index = test_player1_jump;
    else sprite_index = test_player1_fall;
  
}

if (place_meeting(x,y+1,obj_Test_Floor)and hsp = 0 and key_down = 1)//checks if players grounded
{  
   
    state = scr_crouch_state;
 
      }
    
      



//weapon swapping

if(key_weaponswap)
{
    if(weapontype == melee ){
    obj_Test_Player1.weapontype = ranged;
    }
    else if (weapontype = ranged){
    obj_Test_Player1.weapontype = melee;
    }
    
}

//attack animations
if(place_meeting(x,y+1,obj_Test_Floor)) //checks if player is grounded first
{  
             if (key_attack = true)
                {
                image_index = 0;
                state = scr_attack;
               
                }
        }
            
if(place_meeting(x,y+1,obj_Test_Floor))//checks if player is grounded first
{
        if(key_wavedash){
           if(obj_Test_Player1.candash = 1){ 
          state = scr_dash_state;
          alarm[0] = room_speed/6;
          }
         }   
           
             }




