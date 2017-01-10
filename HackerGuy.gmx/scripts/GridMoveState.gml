/// GridMoveState
<<<<<<< HEAD
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
=======
if targetX > x and not(GridPlaceMeeting(x + spd, y)) { x += spd; }
if targetX < x and not(GridPlaceMeeting(x - spd, y)) { x -= spd; }

if targetY > y and not(GridPlaceMeeting(x, y + spd)) { y += spd; }
if targetY < y and not(GridPlaceMeeting(x, y - spd)) { y -= spd; }
>>>>>>> ad882afd1cf778d3fe339cb09fdc9f8031cee205

if (targetX == x && targetY == y)
{
    state = IdleState;
<<<<<<< HEAD
    image_speed = 0;
    moving = false;
=======
>>>>>>> ad882afd1cf778d3fe339cb09fdc9f8031cee205
}

