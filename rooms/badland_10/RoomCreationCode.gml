pal_swap_init_system(8)
global.roommessage = "PIZZA TOWER OF THE WEST"
with (obj_player)
{
    if (targetDoor == "B")
    {
        vsp = 0
        hsp = 0
        movespeed = 0
    }
}
if (!obj_secretmanager.init)
{
    obj_secretmanager.init = 1
    secret_add(function() //anon_gml_Room_badland_10_Create_343_gml_Room_badland_10_Create
    {
        touchedtriggers = 0
    }
, function() //anon_gml_Room_badland_10_Create_384_gml_Room_badland_10_Create
    {
        if (touchedtriggers >= 6)
            secret_open_portal(0)
    }
)
    secret_add(-4, function() //anon_gml_Room_badland_10_Create_499_gml_Room_badland_10_Create
    {
        secret_open_portal(1)
    }
)
    secret_add(-4, function() //anon_gml_Room_badland_10_Create_582_gml_Room_badland_10_Create
    {
        if secret_check_trigger(2)
            secret_open_portal(2)
    }
)
}
