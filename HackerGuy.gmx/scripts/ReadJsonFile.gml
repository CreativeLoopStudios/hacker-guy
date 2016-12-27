/// ReadJsonFile(Filename)
var filename = argument0;

var directory = working_directory + "Levels\" + filename;
var jsonFile = file_text_open_read(working_directory + "Levels\" + filename);

var str = "";
while !file_text_eof(jsonFile)
{
    str += file_text_readln(jsonFile);
}

file_text_close(jsonFile);

return str;
