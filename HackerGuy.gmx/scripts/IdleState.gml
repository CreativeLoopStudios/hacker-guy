/// IdleState
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);
var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);

var upGridMeeting = GridPlaceMeeting(0, -1);
var downGridMeeting = GridPlaceMeeting(0, 1);
var rightGridMeeting = GridPlaceMeeting(1, 0);
var leftGridMeeting = GridPlaceMeeting(-1, 0);

if (up and upGridMeeting)
{
    targetY -= CELL_HEIGHT;
    state = GridMoveState;
}
else if (up and !upGridMeeting)
{
    sprite_index = sPlayerTop;
}

if (down and downGridMeeting)
{
    targetY += CELL_HEIGHT;
    state = GridMoveState;
}
else if (down and !downGridMeeting)
{
    sprite_index = sPlayerBottom;
}

if (right and rightGridMeeting)
{
    targetX += CELL_WIDTH;
    state = GridMoveState;
}
else if (right and !rightGridMeeting)
{
    sprite_index = sPlayerRight;
}

if (left and leftGridMeeting)
{
    targetX -= CELL_WIDTH;
    state = GridMoveState;
}
else if(left and !leftGridMeeting)
{
    sprite_index = sPlayerLeft;
}

if(!up and !down and !right and !left)
{
    image_index = 0;
}
