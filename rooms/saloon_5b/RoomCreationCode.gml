pal_swap_init_system(8)
global.roommessage = "PIZZA TOWER ISLAND"
if (!obj_secretmanager.init)
{
    obj_secretmanager.init = 1
    secret_add(function() //anon_gml_Room_saloon_5b_Create_187_gml_Room_saloon_5b_Create
    {
        touchedtriggers = 0
    }
, function() //anon_gml_Room_saloon_5b_Create_228_gml_Room_saloon_5b_Create
    {
        if (touchedtriggers >= 6)
            secret_open_portal(0)
    }
)
    secret_add(-4, function() //anon_gml_Room_saloon_5b_Create_344_gml_Room_saloon_5b_Create
    {
        if secret_check_trigger(1)
            secret_open_portal(1)
    }
)
}
