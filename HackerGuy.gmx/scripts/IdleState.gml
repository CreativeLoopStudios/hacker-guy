/// IdleState
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);
var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);

if (up)
{
    targetY -= CELL_HEIGHT;
    state = GridMoveState;
}

if (down)
{
    targetY += CELL_HEIGHT;
    state = GridMoveState;
}

if (right)
{
    targetX += CELL_WIDTH;
    state = GridMoveState;
}

if (left)
{
    targetX -= CELL_WIDTH;
    state = GridMoveState;
}
