///DestroyMenu
with(menu){
    for(var i = 0; i < array_length_1d(buildButtons); ++i){
        with(buildButtons[i]){
            instance_destroy();
        }
    }
    instance_destroy();
}
