///scr_crouch_state
    

 sprite_index = test_player1_crouch;
 
 if(image_index >=9)
 {
    image_speed = 0
 }
 


if(keyboard_check_released(vk_down))
 {
 image_speed = 1;
 
  state = scr_move_state;
   }
  // if(keyboard_check_released(vk_down))
     //{
      //state = scr_move_state;
      //}
  


