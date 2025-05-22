global.resource_list = ds_list_create();

AddResource("Gold", 100, 9999, true, 0, sGold);
AddResource("Energy", 50, 1000, true, 0, sEnergy);
AddResource("HP", 10, 10, false, 0, sHP);
AddResource("Event", 0, 1000, true, 2, noone);

var hp_res = GetResource("HP");
CreateBar(hp_res, 32, 64, oBarGlobal, sBarFillHP, sBar, 3, 3)

//var event_res = GetResource("Event");
//CreateBar(event_res, 32, 32, oBarGlobal, sBarFillEvent, sEventBar, 1, 1)