for (var i = 0; i < array_length(menu_items); i++) {
    var item_y = menu_y + i * menu_spacing;
    
    // Detecta se o mouse está em cima do item
    if (point_in_rectangle(mouse_x, mouse_y, menu_x, item_y, menu_x + 200, item_y + 30)) {
        draw_set_color(c_yellow);
        item_hover = i;
    } else {
        draw_set_color(c_white);
    }
    
    draw_text(menu_x, item_y, menu_items[i]);
}
