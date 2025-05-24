if (keyboard_check_pressed(ord("R"))) {
    with (oEventController) TriggerRandomEvent();
}

for (var i = 0; i < ds_list_size(event_list); ++i) {
    var ev = event_list[| i];
    if (ev.cd_left > 0) ev.cd_left -= 1;
}

var resource_event = GetResource("Event");
var step = 200; // Tous les 200p d'event
if (resource_event.amount mod step == 0 // Tous les 200p d'event
    && resource_event.amount != 0 // Pas au démarrage
	&& resource_event.amount != resource_event.max_value // Pas au max
   ) {
	AddToResource("Event", 1);
    with (oEventController) TriggerRandomEvent();
}

// Big Event
if (resource_event.amount == resource_event.max_value) {
	SubtractFromResource("Event", resource_event.max_value, false) // On vide la ressource
    with (oEventController) TriggerRandomEvent();
}