/*horizColor = false; //The color of the horizontally aligned side of corner
vertColor = false; //The color of the vertically aligned side of corner
*/

side = argument0;
color = c_white; //default color

if (side == "vertical") {
    if (collision_point( x, y - 64, obj_wall_red, true, true) || collision_point( x, y + 64, obj_wall_red, true, true)) {
        color = c_red;
    }
    
    if (collision_point( x, y - 64, obj_wall_green, true, true) || collision_point( x, y + 64, obj_wall_green, true, true)) {
        color = c_green;
    }
    
    if (collision_point( x, y - 64, obj_wall_blue, true, true) || collision_point( x, y + 64, obj_wall_blue, true, true)) {
        color = c_blue;
    }
} else if (side == "horizontal") {
    if (collision_point( x - 64, y, obj_wall_red, true, true) || collision_point( x + 64, y, obj_wall_red, true, true)) {
        color = c_red;
    }
    
    if (collision_point( x - 64, y, obj_wall_green, true, true) || collision_point( x + 64, y, obj_wall_green, true, true)) {
        color = c_green;
    }
    
    if (collision_point( x - 64, y, obj_wall_blue, true, true) || collision_point( x + 64, y, obj_wall_blue, true, true)) {
        color = c_blue;
    }
}

return color;
