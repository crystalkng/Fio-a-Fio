item_hover = -1; // Reinicia a seleção a cada frame

for (var i = 0; i < array_length(menu_items); i++) {
    var item_y = menu_y + i * menu_spacing;

    // Verifica se o mouse está em cima do item
    if (point_in_rectangle(mouse_x, mouse_y, menu_x, item_y, menu_x + 200, item_y + 30)) {
        item_hover = i;

        // Verifica se o botão esquerdo do mouse foi pressionado
        if (mouse_check_button_pressed(mb_left)) {
            switch (i) {
                case 0:
                    room_goto(rm_jogo); // Iniciar
                    break;
                case 1:
                    room_goto(rm_opcoes); // Opções
                    break;
                case 2:
                    game_end(); // Sair
                    break;
            }
        }
    }
}
