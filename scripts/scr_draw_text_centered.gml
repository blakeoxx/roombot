///scr_draw_text_centered(x, y, string, width)

var myX = argument0;
var myY = argument1;
var str = argument2;
var boxwidth = argument3;

var strwidth = string_width(str);
draw_text(myX+(boxwidth/2)-(strwidth/2), myY, str);
