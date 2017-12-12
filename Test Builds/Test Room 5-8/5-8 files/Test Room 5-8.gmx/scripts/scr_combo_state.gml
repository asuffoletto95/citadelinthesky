///scr_combo_state

    if(CanAttack && (ComboCount < array_length_1d(Combo)))
{  
       switch(ComboCount)
       {
            case 0:
                sprite_index = Combo[ComboCount];
                break;
            case 1:
                sprite_index = Combo[ComboCount];
                break;
            case 2:
                sprite_index = Combo[ComboCount];
                break;
            default:
                sprite_index = test_player_idle; 
       }
       CanAttack = false;
       comboTimer = 2;
       ComboCount ++; 
       
       
  }


