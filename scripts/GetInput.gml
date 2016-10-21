///GetInput()

//Keyboard
//Utility
key_speedTime = keyboard_check_pressed(vk_tab);
left = keyboard_check_pressed(vk_left);
right = keyboard_check_pressed(vk_right);
scrollDown = mouse_wheel_down();
scrollUp = mouse_wheel_up();

//Mouse
leftMouse = mouse_check_button_pressed(mb_left);
rightMouse = mouse_check_button_pressed(mb_right);

//View
moveUp = keyboard_check(ord('W'));
moveDown = keyboard_check(ord('S'));
moveRight = keyboard_check(ord('D'));
moveLeft = keyboard_check(ord('A'));
