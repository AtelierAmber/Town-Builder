///SetupBuildCosts()
/* Build Costs
[i][j%3 == 0] = objectName
[i][j%3 == 1] = inventoryIndex
[i][j%3 == 2] = amount
*/
//Campfire
buildCosts[0,0] = "Sticks";     //Name
buildCosts[0,1] = 0;    //Inventory Index
buildCosts[0,2] = 3;            //Amount
//Tent
buildCosts[1,0] = "Sticks";     //Name
buildCosts[1,1] = 0;    //Inventory Index
buildCosts[1,2] = 2;            //Amount
buildCosts[1,3] = "Tree";       //Name
buildCosts[1,4] = 0;      //Inventory Index
buildCosts[1,5] = 1;            //Amount
//Chest
buildCosts[2,0] = "Sticks";     //Name
buildCosts[2,1] = 0;    //Inventory Index
buildCosts[2,2] = 5;            //Amount
