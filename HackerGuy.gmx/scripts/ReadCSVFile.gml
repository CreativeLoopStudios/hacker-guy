/// ReadCSVFile(Filename)
var filename = argument0;

var csvFile = file_text_open_read(working_directory + "Levels\" + filename);

var csvArr;

var lineNumber = 0;
while !file_text_eof(csvFile)
{
    var line = file_text_readln(csvFile);
    var column = 0;
    var value = "";
    for(var i = 1; i <= string_length(line); i++)
    {
        if(string_char_at(line, i) == ",")
        {
            value = "";
            column++;
        }
        else
        {
            value += string_char_at(line, i);
            csvArr[column, lineNumber] = value;
        }
    }
    lineNumber++;
}

file_text_close(csvFile);

return csvArr;
