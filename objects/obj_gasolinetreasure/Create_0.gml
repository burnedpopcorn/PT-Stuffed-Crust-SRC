event_inherited()
function anon_gml_Object_obj_gasolinetreasure_Create_0_33_gml_Object_obj_gasolinetreasure_Create_0() //anon_gml_Object_obj_gasolinetreasure_Create_0_33_gml_Object_obj_gasolinetreasure_Create_0
{
    if (global.gasolinecutscene == -4 || (!global.gasolinecutscene))
    {
        global.gasolinecutscene = 1
        quick_ini_write_real(get_savefile_ini(), "cutscene", "gasoline", 1)
    }
}

if (global.gasolinecutscene == -4)
    global.gasolinecutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "gasoline", 0)
if global.gasolinecutscene
    instance_destroy()
if (global.mansioncutscene == -4)
    global.mansioncutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "mansion", 0)
if ((!global.mansioncutscene) && (!global.levelcomplete))
    instance_destroy()
