/// IdleState
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);
var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);

if (up and GridPlaceMeeting(0, -1))
{
    targetY -= CELL_HEIGHT;
    state = GridMoveState;
}

if (down and GridPlaceMeeting(0, 1))
{
    targetY += CELL_HEIGHT;
    state = GridMoveState;
}

if (right and GridPlaceMeeting(1, 0))
{
    targetX += CELL_WIDTH;
    state = GridMoveState;
}

if (left and GridPlaceMeeting(-1, 0))
{
    targetX -= CELL_WIDTH;
    state = GridMoveState;
}

if(!up and !down and !right and !left)
{
    image_index = 0;
}
