function scr_player_machslide() //scr_player_machslide
{
    if (!(place_meeting(x, (y + 1), obj_railparent)))
        hsp = (xscale * movespeed)
    else
    {
        var _railinst = instance_place(x, (y + 1), obj_railparent)
        hsp = ((xscale * movespeed) + (_railinst.movespeed * _railinst.dir))
    }
    move = (key_right + key_left)
    if (movespeed >= 0)
    {
        if (character != "S")
            movespeed = Approach(movespeed, 0, 0.4)
        else
            movespeed -= 0.4
    }
    if (sprite_index == spr_machslidestart && floor(image_index) == (image_number - 1))
        sprite_index = spr_machslide
    if (floor(image_index) == (image_number - 1) && (sprite_index == spr_machslideboost || sprite_index == spr_mach3boost))
    {
        if (!grounded)
        {
            if (sprite_index == spr_machslideboost)
                sprite_index = spr_machslideboostfall
            else if (sprite_index == spr_mach3boost)
                sprite_index = spr_machslideboost3fall
        }
        else
            image_index = (image_number - 1)
    }
    else
        image_speed = 0.35
    landAnim = 0
    if (floor(movespeed) <= 0 && (sprite_index == spr_machslide || sprite_index == spr_crouchslide))
    {
        state = (0 << 0)
        image_index = 0
        if (sprite_index == spr_machslide)
            machslideAnim = 1
        movespeed = 0
    }
    if (place_meeting((x + xscale), y, obj_solid) && (sprite_index == spr_machslide || sprite_index == spr_machslidestart))
    {
        fmod_event_one_shot_3d("event:/sfx/pep/splat", x, y)
        sprite_index = spr_wallsplat
        state = (106 << 0)
        image_index = 0
    }
    if (input_buffer_shoot > 0)
    {
        if shotgunAnim
        {
            if (move != 0)
                xscale = move
            scr_shotgunshoot()
        }
        else if global.pistol
            scr_pistolshoot((0 << 0))
    }
    if grounded
    {
        if ((floor(image_index) == (image_number - 1) || (floor(image_index) >= ((image_number - 1) / 3) && key_slap2)) && (sprite_index == spr_machslideboost || sprite_index == spr_machslideboostfall))
        {
            hsp = 0
            image_index = 0
            xscale *= -1
            movespeed = 8
            state = (104 << 0)
        }
        if (((floor(image_index) == (image_number - 1) || (floor(image_index) >= ((image_number - 1) / 3) && key_slap2)) && sprite_index == spr_mach3boost) || sprite_index == spr_machslideboost3fall)
        {
            if (!launch)
            {
                hsp = 0
                sprite_index = spr_mach4
                image_index = 0
                xscale *= -1
                movespeed = 12
                state = (121 << 0)
            }
            else
            {
                xscale *= -1
                sprite_index = spr_dashpadmach
                image_index = 0
                state = (121 << 0)
                movespeed = 14
                launched = 1
                launch = 0
                launch_buffer = 20
            }
        }
        if (sprite_index == spr_player_crouchslide && movespeed == 0)
        {
            facehurt = 1
            state = (0 << 0)
            sprite_index = spr_facehurtup
        }
        if (sprite_index == spr_playerN_slipbanan2 && movespeed == 0)
        {
            facehurt = 1
            state = (0 << 0)
            sprite_index = spr_facehurtup
        }
        if ((!instance_exists(dashcloudid)) && (!(place_meeting(x, (y + 1), obj_water))))
        {
            with (instance_create(x, y, obj_dashcloud2))
            {
                image_xscale = other.xscale
                other.dashcloudid = id
            }
        }
        if ((!instance_exists(dashcloudid)) && place_meeting(x, (y + 1), obj_water))
        {
            with (instance_create(x, y, obj_dashcloud2))
            {
                sprite_index = spr_watereffect
                image_xscale = other.xscale
                other.dashcloudid = id
            }
        }
    }
}
