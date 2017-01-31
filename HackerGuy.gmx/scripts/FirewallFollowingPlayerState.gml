/// FirewallFollowingPlayerState()
if(instance_exists(Player))
{
    // equal the speed of the player
    spd = Player.spd;
    
    // if player is below
    if(Player.y > y)
    {
        show_debug_message("below");
        if(GridPlaceMeeting(0, 1))
        {
            targetY = y + CELL_HEIGHT;
        }
    }
    
    // if player is above
    if(Player.y < y)
    {
        show_debug_message("above");
        if(GridPlaceMeeting(0, -1))
        {
            targetY = y - CELL_HEIGHT;
        }
    }
    
    // if player is far enough
    var playerDistance = point_distance(x, y, Player.x, Player.y) / CELL_WIDTH;
    if(playerDistance > maxDistanceFromPlayer)
    {
        state = FirewallPatrollingState;
    }
}
