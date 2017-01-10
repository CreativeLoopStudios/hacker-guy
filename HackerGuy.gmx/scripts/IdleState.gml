/// IdleState

var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);
var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);

if (up and GridPlaceMeeting(0, -1))
{
    state = GridMoveState;
    targetY -= CELL_HEIGHT;
}

if (down and GridPlaceMeeting(0, 1))
{
    state = GridMoveState;
    targetY += CELL_HEIGHT;
}

if (right and GridPlaceMeeting(1, 0))
{
    state = GridMoveState;
    targetX += CELL_WIDTH;
}

if (left and GridPlaceMeeting(-1, 0))
{
    state = GridMoveState;
    targetX -= CELL_WIDTH;
}
