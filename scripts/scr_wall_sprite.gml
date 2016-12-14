image_speed = 0;
corner = "default"; //by default, assume it is not a corner
array[0, 0] = false;
array[0, 1] = false;
array[0, 2] = false;
array[1, 0] = false;
array[1, 2] = false;
array[2, 0] = false;
array[2, 1] = false;
array[2, 2] = false;

if (collision_point( x - 64, y - 64, obj_wall_default, true, true)) {
    array[0, 0] = true;
}

if (collision_point( x, y - 64, obj_wall_default, true, true)) {
    array[0, 1] = true;
}

if (collision_point( x + 64, y - 64, obj_wall_default, true, true)) {
    array[0, 2] = true;
}

if (collision_point( x - 64, y, obj_wall_default, true, true)) {
    array[1, 0] = true;
}

if (collision_point( x + 64, y, obj_wall_default, true, true)) {
    array[1, 2] = true;
}

if (collision_point( x - 64, y + 64, obj_wall_default, true, true)) {
    array[2, 0] = true;
}

if (collision_point( x, y + 64, obj_wall_default, true, true)) {
    array[2, 1] = true;
}

if (collision_point( x + 64, y + 64, obj_wall_default, true, true)) {
    array[2, 2] = true;
}

//Checks which sprite to show

//Show image 0
if (array[0, 1] == true &&
    array[1, 2] == true &&
    array[2, 1] == true &&
    array[1, 0] == true) {
    if (array[0, 0] == false) {
        image_index = 12;
    } else if (array[0, 2] == false) {
        image_index = 13;
    } else if (array[2, 0] == false) {
        image_index = 11;
    } else if (array[2, 2] == false) {
        image_index = 14;
    } else {
        image_index = 0;
    }
    
} else if ( // Show image 1
    array[0, 1] == true &&
    array[1, 2] == true &&
    array[2, 1] == false &&
    array[1, 0] == true) { 
        image_index = 1;
} else if ( // Show image 2
    array[0, 1] == true &&
    array[1, 2] == true &&
    array[2, 1] == true &&
    array[1, 0] == false
    ) { 
        image_index = 2;
} else if ( // Show image 3
    array[0, 1] == false &&
    array[1, 2] == true &&
    array[2, 1] == true &&
    array[1, 0] == true) {
        image_index = 3;
} else if ( // Show image 4
    array[0, 1] == true &&
    array[1, 2] == false &&
    array[2, 1] == true &&
    array[1, 0] == true) {
        image_index = 4;
} else if ( // Show image 5
    array[0, 1] == false &&
    array[1, 2] == true &&
    array[2, 1] == false &&
    array[1, 0] == true) { 
        image_index = 5;
} else if ( // Show image 6
    array[0, 1] == true &&
    array[1, 2] == false &&
    array[2, 1] == true &&
    array[1, 0] == false) { 
        image_index = 6;
} else if ( // Show image 7
    array[0, 1] == true &&
    array[1, 2] == false &&
    array[2, 1] == false &&
    array[1, 0] == false
    ) { 
        image_index = 7;
} else if ( // Show image 8
    array[0, 1] == false &&
    array[1, 2] == true &&
    array[2, 1] == false &&
    array[1, 0] == false
    ) { 
        image_index = 8;
} else if (  // Show image 9
    array[0, 1] == false &&
    array[1, 2] == false &&
    array[2, 1] == true &&
    array[1, 0] == false
) {
        image_index = 9;
} else if (  // Show image 10
    array[0, 1] == false &&
    array[1, 2] == false &&
    array[2, 1] == false &&
    array[1, 0] == true
) {
        image_index = 10;
} else if (  // Show image 15 CORNER TOP RIGHT
    array[0, 1] == false &&
    array[1, 2] == false &&
    array[2, 1] == true &&
    array[1, 0] == true
) {
        image_index = 15;
        corner = "topright";
        
} else if (  // Show image 16 CORNER TOP LEFT
    array[0, 1] == false &&
    array[1, 2] == true &&
    array[2, 1] == true &&
    array[1, 0] == false
) {
        image_index = 16;
        corner = "topleft";
}
 else if (  // Show image 17 CORNER BOTTOM LEFT
    array[0, 1] == true &&
    array[1, 2] == true &&
    array[2, 1] == false &&
    array[1, 0] == false
) {
        image_index = 17;
        corner = "bottomleft";
}
 else if (  // Show image 18 CORNER BOTTOM RIGHT
    array[0, 1] == true &&
    array[1, 2] == false &&
    array[2, 1] == false &&
    array[1, 0] == true
) {
        image_index = 18;
        corner = "bottomright";
}

