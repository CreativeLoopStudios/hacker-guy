/// FirewallPatrollingState()
spd = defaultSpd;

if(not(patrolling))
{
    if(direction == 90)
    {
        targetX = x;
        targetY = y - CELL_HEIGHT;
    }
    else if(direction == 270)
    {
        targetX = x;
        targetY = y + CELL_HEIGHT;
    }
    else if(direction == 0)
    {
        targetX = x + CELL_WIDTH;
        targetY = y;
    }
    else if(direction == 180)
    {
        targetX = x - CELL_WIDTH;
        targetY = y;
    }
    
    patrolling = true;
}

// update grid position
if(patrolling)
{
    if(instance_exists(Level))
    {
        Level.grid[# x div CELL_WIDTH, y div CELL_HEIGHT] = FIREWALL;
        Level.grid[# targetX div CELL_WIDTH, targetY div CELL_HEIGHT] = FIREWALL;
    }
}

// if firewall arrived at target
if (targetX == x and targetY == y)
{
    if(not(GridPlaceMeeting(0, -1)) or not(GridPlaceMeeting(0, 1)))
    {
        direction += 180;
        patrolling = false;
    }
    
    if(instance_exists(Player))
    {
        // if player is close enough
        var playerDistance = point_distance(x, y, Player.x, Player.y) / CELL_WIDTH;
        if(playerDistance <= maxDistanceFromPlayer)
        {
            state = FirewallFollowingPlayerState;
        }
    }
}

