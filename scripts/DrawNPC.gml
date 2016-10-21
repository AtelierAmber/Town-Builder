///DrawNPC(pants, pantColor, shirt, shirtColor, head, skinColor)
var pantsIndex = argument0;
var cPants = argument1;
var shirtIndex = argument2;
var cShirt = argument3;
var headIndex = argument4;
var cSkin = argument5;
//Pants
draw_sprite_ext(sprNPC, pantsIndex, x - 3, y - 6, 1, 1, 0, cPants, 255);
//Shirt
draw_sprite_ext(sprNPC, shirtIndex, x - 3 , y - 9, 1, 1, 0, cShirt, 255);
//Head
draw_sprite_ext(sprNPC, headIndex, x - 3 , y - 15, 1, 1, 0, cSkin, 255);
