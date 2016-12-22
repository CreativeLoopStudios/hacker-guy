/// GridMoveState
if targetX > x { x += spd; }
if targetX < x { x -= spd; }

if targetY > y { y += spd; }
if targetY < y { y -= spd; }

if (targetX == x && targetY == y)
{
    state = IdleState;
}