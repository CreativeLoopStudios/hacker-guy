/// GridPlaceMeeting(x, y)
var xx = argument0;
var yy = argument1;

// remenber our position
var xp = x;
var yp = y;

// Update the position for the bbox calculations
x = xx;
y = yy;

// check for x meeting
var xMeeting = (Level.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR) or
                (Level.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR);
                
var yMeeting = (Level.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR) or
                (Level.grid[# bbox_left div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR);

var centerMeeting = Level.grid[# xx div CELL_WIDTH, yy div CELL_HEIGHT] != FLOOR;

// move back
x = xp;
y = yp;

return xMeeting or yMeeting or centerMeeting;
