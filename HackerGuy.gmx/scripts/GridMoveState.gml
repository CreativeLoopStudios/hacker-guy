/// GridMoveState
if (targetX > x)
{
    x += spd;
    sprite_index = sPlayerRight;
    image_speed = imageSpd;
    direction = 0;
}

if (targetX < x)
{
    x -= spd;
    sprite_index = sPlayerLeft;
    image_speed = imageSpd;
    direction = 180;
}

if (targetY > y)
{
    y += spd;
    sprite_index = sPlayerBottom;
    image_speed = imageSpd;
    direction = 270;
}
<<<<<<< HEAD

if (targetY < y)
=======
if targetY < y
>>>>>>> 273b1f5ec886afd26ed9665aa58069236126a43f
{
    y -= spd;
    sprite_index = sPlayerTop;
    image_speed = imageSpd;
    direction = 90;
}

<<<<<<< HEAD
if (targetX == x and targetY == y)
=======
depth = -y;

if (targetX == x && targetY == y)
>>>>>>> 273b1f5ec886afd26ed9665aa58069236126a43f
{
    state = IdleState;
    image_speed = 0;
}
