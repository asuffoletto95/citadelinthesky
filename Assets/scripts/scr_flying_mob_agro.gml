///scr_ground_mob_agro_state
/// Move 10% to the player

 if (place_meeting(x>=15,y>=4,obj_Test_Player1))or(place_meeting(x<=15,y<=4,obj_Test_Player1))// Sets agro range of object
{ 
x += (obj_Test_Player1.x - x)* .1; // moves object towards player in the x direction    
y += (obj_Test_Player1.y - y)* .1; // moves object towards player in the y direction
}
