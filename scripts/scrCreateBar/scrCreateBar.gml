function CreateBar(_resource, _x, _y, _bar_object, _sprite_fill, _sprite_frame) {
    if (_resource != noone) {
        var obj = (_bar_object != undefined) ? _bar_object : oBarGlobal;
        var inst = instance_create_layer(_x, _y, "Instances", obj);
        inst.resource         = _resource;
        inst.bar_sprite_fill  = _sprite_fill;
        inst.bar_sprite_frame = _sprite_frame;
        return inst;
    }
    return noone;
}