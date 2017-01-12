/// PlayerIdleState
// keyboard checks
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);
var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);

// collision events with the objects
var upGridMeeting = GridPlaceMeeting(0, -1);
var downGridMeeting = GridPlaceMeeting(0, 1);
var rightGridMeeting = GridPlaceMeeting(1, 0);
var leftGridMeeting = GridPlaceMeeting(-1, 0);

if (up and upGridMeeting)
{
    targetY -= CELL_HEIGHT;
    state = PlayerGridMoveState;
}
else if (up and !upGridMeeting)
{
    // set sprite of idle
    sprite_index = sPlayerTop;
    direction = 90;
}

if (down and downGridMeeting)
{
    targetY += CELL_HEIGHT;
    state = PlayerGridMoveState;
}
else if (down and !downGridMeeting)
{
    // set sprite of idle
    sprite_index = sPlayerBottom;
    direction = 270;
}

if (right and rightGridMeeting)
{
    targetX += CELL_WIDTH;
    state = PlayerGridMoveState;
}
else if (right and !rightGridMeeting)
{
    // set sprite of idle
    sprite_index = sPlayerRight;
    direction = 0;
}

if (left and leftGridMeeting)
{
    targetX -= CELL_WIDTH;
    state = PlayerGridMoveState;
}
else if(left and !leftGridMeeting)
{
    // set sprite of idle
    sprite_index = sPlayerLeft;
    direction = 180;
}

if(!up and !down and !right and !left)
{
    image_index = 0;
}

// hacking state
var space_pressed = keyboard_check_pressed(vk_space);

// if computer is at top
var computer = instance_place(x, y - CELL_HEIGHT, GreenPC);
if(instance_exists(computer) and direction == 90 and space_pressed)
{
    if(not(computer.hacked))
    {
        state = PlayerHackingState;
        HackComputer(computer);
    }
}
