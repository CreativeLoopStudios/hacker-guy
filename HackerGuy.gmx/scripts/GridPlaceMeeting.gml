/// GridPlaceMeeting(x_number_of_cell, y_number_of_cell)
var xx = argument0;
var yy = argument1;

// remenber our position
var xp = x - (CELL_WIDTH / 2) + (xx * CELL_WIDTH);
var yp = y - (CELL_HEIGHT / 2) + (yy * CELL_HEIGHT);

var isFloor = Level.grid[#xp div CELL_WIDTH, yp div CELL_HEIGHT] == FLOOR;

return isFloor;
