/// HackComputer(obj)
var computer = argument0;

with computer
{
    if (state == ComputerIdleState)
    {
        state = ComputerProgressState;
        alarm[0] = room_speed * 2;
    }
}
