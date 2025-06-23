# params
    # rand_x
    # rand_y
    # radius
    # draw_cmd

# rotate
$rotate @s $(rand_x) $(rand_y)

# draw
$execute positioned ^ ^ ^$(radius) if block ~ ~ ~ #std:vanilla/partial_or_transparent run $(draw_cmd)
$execute positioned ^ ^ ^-$(radius) if block ~ ~ ~ #std:vanilla/partial_or_transparent run $(draw_cmd)
$execute positioned ^ ^$(radius) ^ if block ~ ~ ~ #std:vanilla/partial_or_transparent run $(draw_cmd)
$execute positioned ^ ^-$(radius) ^ if block ~ ~ ~ #std:vanilla/partial_or_transparent run $(draw_cmd)

# draw horizontal circle
#$execute positioned ^$(radius) ^ ^ run $(draw_cmd)
#$execute positioned ^-$(radius) ^ ^ run $(draw_cmd)

# randomize values
execute store result storage minecraft:hipochallenge local_sphere_draw_params.rand_x int 1 run random value -180..180
execute store result storage minecraft:hipochallenge local_sphere_draw_params.rand_y int 1 run random value -90..90

# reiteration logic
scoreboard players remove $iteration local_sphere_score 1
execute if score $iteration local_sphere_score matches ..-1 run return fail
execute as @n[type=marker,nbt={data:{sph_local:1b}}] at @s run function hipochallenge:vfx/sphere/draw with storage minecraft:hipochallenge local_sphere_draw_params
