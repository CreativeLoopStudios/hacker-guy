/// CreateOnGrid(grid, x, y, margin, object, id)

var grid = argument0;
var xx = argument1;
var yy = argument2;
var margin = argument3;
var object = argument4;
var macroId = argument5;

grid[# xx, yy] = macroId;
return instance_create((xx * CELL_WIDTH) + margin, (yy * CELL_HEIGHT) + margin, object);
