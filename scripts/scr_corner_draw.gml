//check corner colors
if (corner != "default") {
    //check colors of sides
    vertSideColor = scr_corner_color_check("vertical");
    horizSideColor = scr_corner_color_check("horizontal");
    
    //set sprites for colored sides
    if (corner == "topright") {
        //Draw Vertical Sprite
        draw_sprite_ext( spr_corner_sides, 0, x + 32, y + 32, 1, 1, 0, vertSideColor, 1 );
        //Draw Horizontal Sprite
        draw_sprite_ext( spr_corner_sides, 1, x + 32, y + 32, 1, 1, 90, horizSideColor, 1 );
    } else if (corner == "topleft") {
        //Draw Vertical Sprite
        draw_sprite_ext( spr_corner_sides, 1, x + 32, y + 32, 1, 1, 180, vertSideColor, 1 );
        //Draw Horizontal Sprite
        draw_sprite_ext( spr_corner_sides, 0, x + 32, y + 32, 1, 1, 90, horizSideColor, 1 );
    } else if (corner == "bottomleft") {
        //Draw Vertical Sprite
        draw_sprite_ext( spr_corner_sides, 0, x + 32, y + 32, 1, 1, 180, vertSideColor, 1 );
        //Draw Horizontal Sprite
        draw_sprite_ext( spr_corner_sides, 1, x + 32, y + 32, 1, 1, 270, horizSideColor, 1 );
    } else if (corner == "bottomright") {
        //Draw Vertical Sprite
        draw_sprite_ext( spr_corner_sides, 1, x + 32, y + 32, 1, 1, 0, vertSideColor, 1 );
        //Draw Horizontal Sprite
        draw_sprite_ext( spr_corner_sides, 0, x + 32, y + 32, 1, 1, 270, horizSideColor, 1 );
    }
    
    show_debug_message("corner = " + corner + "vertSideColor = " + string(vertSideColor) + "horizSideColor = " + string(horizSideColor));
} else {
sprite_index = spr_wall_default;
}
