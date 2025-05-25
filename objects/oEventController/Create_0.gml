event_list = ds_list_create();

//Event definition
function AddEvent(_name, _weight, _difficulty, _type, _unique, _cooldown, _callback) {
    var ev = {
        name		: _name, //name
        weight		: _weight, //chance of being picked
		difficulty  : _difficulty, //power of the event default to one if only one version of event
		type		: _type, //type of the event (good / bad)
		unique		: _unique, // bool is event unique
		triggered	: false, // state of unique event
		cooldown   : _cooldown,   //  ◀ total time (frames) between uses
        cd_left    : 0,           //  ◀ time still remaining
        call		: _callback //callback
    };
    ds_list_add(event_list, ev);
}

AddEvent("Meteor Strike", 0, 1, "bad", false, 60, scrMeteorStrike);
AddEvent("Dmg 1", 10, 1, "bad", false, 0, scrDmg);
AddEvent("Alien Attack", 0, 1, "bad", true, 0, scrAlienAttack);
AddEvent("Airdrop", 0, 1, "good", false, 1000, scrAirdrop);
AddEvent("Volcan", 10, 1, "bad", false, 60, scrVolcan);

/// Helper ----------------------------------------------------
function EventIsEligible(ev)
{
    return (ev.weight > 0 && ev.cd_left <= 0);
}

function RunEvent(ev)
{
    script_execute(ev.call);
    ev.cd_left = ev.cooldown;

    if (ev.unique && !ev.triggered) {
        ev.triggered = true;
        ev.weight    = 0;   // never selectable again
    }
}

function TriggerRandomEvent()
{
    var total = 0;
    for (var i = 0; i < ds_list_size(event_list); ++i) {
        var ev = event_list[| i];
        if (EventIsEligible(ev)) total += ev.weight;
    }

    if (total <= 0) {
        show_debug_message("No events ready!");
        return;
    }
    var roll = irandom_range(1, total);

    for (var i = 0; i < ds_list_size(event_list); ++i) {
        var ev = event_list[| i];
        if (!EventIsEligible(ev)) continue;

        roll -= ev.weight;
        if (roll <= 0) {
            RunEvent(ev);
            break;
        }
    }
}