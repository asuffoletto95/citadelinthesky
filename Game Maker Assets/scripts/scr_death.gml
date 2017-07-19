if (global.checkpointR != 0)
{
    room_goto(global.checkpointR);
    obj_Test_Player1.x = global.checkpointx;
    obj_Test_Player1.y = global.checkpointy;
}
else
{
    room_restart();
}
