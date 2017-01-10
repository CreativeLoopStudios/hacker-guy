/// GridMoveState
if targetX > x
{
    x += spd;
    sprite_index = sPlayerRight;
    image_speed = imageSpd;
}
if targetX < x
{
    x -= spd;
    sprite_index = sPlayerLeft;
    image_speed = imageSpd;
}

if targetY > y
{
    y += spd;
    sprite_index = sPlayerBottom;
    image_speed = imageSpd;
}
if targetY < y
{
    y -= spd;
    sprite_index = sPlayerTop;
    image_speed = imageSpd;
}


if (targetX == x && targetY == y)
{
    state = IdleState;
    image_speed = 0;
}
