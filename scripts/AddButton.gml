///AddButton(index, object, objectName, objectCostIndex, objectSpriteIndex)
var index = array_length_1d(buildButtons);
var object = argument0;
var name = argument1;
var costI = argument2;
var sprIndex = argument3;

buildButtons[index] = instance_create(x + 7*menuScale, 
    y + 7*index + ((sprite_get_height(sprBuildObjectButton)*menuScale/1.5)*index) , objBuildObjectButton);
with(buildButtons[index]){
    buildObject = object;
    buildObjectName = name;
    buildObjectCostIndex = costI;
    buildObjectSpriteIndex = sprIndex;
    parentMenu = other;
}
