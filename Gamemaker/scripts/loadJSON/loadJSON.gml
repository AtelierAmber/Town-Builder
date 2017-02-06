///loadJSON(file)
/// @description Loads a JSON from a file
var file = file_text_open_read(argument0);
var data = "";
while(!file_text_eof(file)){
  data += file_text_read_string(file);
  file_text_readln(file);
}
file_text_close(file);

var jsonMap = json_decode(data);
return jsonMap;