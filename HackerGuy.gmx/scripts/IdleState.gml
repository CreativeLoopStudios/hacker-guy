/// IdleState

var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);
var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);

if (up)
{
    state = GridMoveState;
    targetY -= CELL_HEIGHT;
}

if (down)
{
    state = GridMoveState;
    targetY += CELL_HEIGHT;
}

if (right)
{
    state = GridMoveState;
    targetX += CELL_HEIGHT;
}

if (left)
{
    state = GridMoveState;
    targetX -= CELL_HEIGHT;
}
