if (mouse_check_button_pressed(mb_left)) {
    switch (item_hover) {
        case 0:
            room_goto(rm_jogo); // ou use instance_destroy(); se ficar na mesma sala
            break;
        case 1:
            room_goto(rm_opcoes);
            break;
        case 2:
            game_end();
            break;
    }
}

