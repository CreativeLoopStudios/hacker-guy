/// GridMoveState
if targetX > x and not(GridPlaceMeeting(x + spd, y)) { x += spd; }
if targetX < x and not(GridPlaceMeeting(x - spd, y)) { x -= spd; }

if targetY > y and not(GridPlaceMeeting(x, y + spd)) { y += spd; }
if targetY < y and not(GridPlaceMeeting(x, y - spd)) { y -= spd; }

if (targetX == x && targetY == y)
{
    state = IdleState;
}


