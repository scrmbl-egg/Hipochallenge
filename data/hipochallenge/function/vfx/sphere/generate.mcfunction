# params:
    # radius
    # draw_cmd

# setup
scoreboard objectives add local_sphere_score dummy
summon marker ~ ~ ~ {Rotation:[-180F,-90F],data:{sph_local:1b}}

$data modify storage minecraft:hipochallenge local_sphere_draw_params.radius set value $(radius)

# decide how many iterations the function will do (I = 10 + 10*(R/4))
execute store result score $size local_sphere_score run data get storage minecraft:hipochallenge local_sphere_draw_params.radius
scoreboard players set $4 local_sphere_score 4
scoreboard players operation $size local_sphere_score /= $4 local_sphere_score
execute if score $size local_sphere_score matches ..0 run scoreboard players set $size local_sphere_score 1
scoreboard players set $iteration local_sphere_score 10
scoreboard players operation $iteration local_sphere_score *= $size local_sphere_score

# storage setup
execute store result storage minecraft:hipochallenge local_sphere_draw_params.rand_x int 1 run random value -180..180
execute store result storage minecraft:hipochallenge local_sphere_draw_params.rand_y int 1 run random value -90..90
$data modify storage minecraft:hipochallenge local_sphere_draw_params.radius set value $(radius)
$data modify storage minecraft:hipochallenge local_sphere_draw_params.draw_cmd set value "$(draw_cmd)"

# draw
execute as @n[type=marker,nbt={data:{sph_local:1b}}] at @s run function hipochallenge:vfx/sphere/draw with storage minecraft:hipochallenge local_sphere_draw_params

# kill marker and free data
kill @n[type=marker,nbt={data:{sph_local:1b}}]
scoreboard objectives remove local_sphere_score
data remove storage minecraft:hipochallenge local_sphere_draw_params
