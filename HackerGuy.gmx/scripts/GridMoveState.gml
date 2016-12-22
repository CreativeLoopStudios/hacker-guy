/// GridMoveState
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);
var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);

if (walking == false)
{
    if (up)
    {
        walking = true;
        targetY -= global.gridSize;
    }
    
    if (down)
    {
        walking = true;
        targetY += global.gridSize;
    }
    
    if (right)
    {
        walking = true;
        targetX += global.gridSize;
    }
    
    if (left)
    {
        walking = true;
        targetX -= global.gridSize;
    }
}

if targetX > x { x += spd; }
if targetX < x { x -= spd; }

if targetY > y { y += spd; }
if targetY < y { y -= spd; }

if (targetX == x)
{
    walking = false;
}

if (targetY == y)
{
    walking = false;
}
