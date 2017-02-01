var space_is_released = keyboard_check_released(vk_space);

if(not(space_is_released))
{
    HackComputer(currentComputerBeingHacked);
}
else if(space_is_released)
{
    UnhackComputer(currentComputerBeingHacked);
    state = PlayerIdleState;
}
