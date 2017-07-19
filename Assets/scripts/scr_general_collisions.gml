///scr_general_collisions
// checks for general colisions in the x and y direction

var hsp = 1;
var vsp = 1

//Horizontal collision

if (place_meeting(x+hsp,y,obj_Test_Floor))
{
    while(!place_meeting(x+sign(hsp),y,obj_Test_Floor))//if one space left or right theres a wall space, move 1
    {
        x+= sign(hsp);
    }
    hsp= 0;
}

// Vertical Collision 
if (place_meeting(x,y+vsp,obj_Test_Floor))
{
    while(!place_meeting(x,y+sign(vsp),obj_Test_Floor))//if one space under or above theres wall  move 1
    {
        y+= sign(vsp);
    }
    vsp= 0;
}
y += vsp;
