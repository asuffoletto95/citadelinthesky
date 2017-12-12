///scr_attack
//checks weapon type first then plays animations accordinngly while stopping at last frame of annimation to avoid wated memory
//**note to self set this as a parent object in the future so that you wont have too keep typing this code out for every future ranged
//** or future melee type weapon.

//melee attacks p6
var tempdir = 0;

if(obj_Test_Player1.weapontype = melee) // checks player attack type
state = scr_combo_state;
 
 

