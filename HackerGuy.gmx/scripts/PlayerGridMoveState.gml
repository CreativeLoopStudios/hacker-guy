/// PlayerGridMoveState
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

if (targetY < y)
{
    y -= spd;
    sprite_index = sPlayerTop;
    image_speed = imageSpd;
    direction = 90;
}

depth = -y;

if (targetX == x and targetY == y)
{
    state = PlayerIdleState;
    image_speed = 0;
}
