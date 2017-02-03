/// @description Insert description here
// You can write your code in this editor
depth = -y;
image_index = floor(curState);
if(curState >= 1){
    curState += 4.5/fps;
    if(curState >= 3){
        curState = 1;
    }
}