if instance_exists(obj_player)
    showtext = place_meeting(x, y, obj_player)
if instance_exists(obj_transfotip)
    showtext = 0
if showtext
    alpha = Approach(alpha, 1, 0.1)
else
    alpha = Approach(alpha, 0, 0.1)
if global.panic
    instance_destroy()
if global.panicbg
{
    image_speed = 0.35
    image_alpha = 1
}
else
{
    image_speed = 0
    image_alpha = 0.5
}
