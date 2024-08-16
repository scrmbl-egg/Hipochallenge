schedule function hipochallenge:main_sec 1s

# comida
    effect give @a minecraft:saturation infinite 0 true

# ids
    scoreboard players add @a id 0
    execute as @a[scores={id=0}] at @s run function hipochallenge:unique/generate_id

# TODO: Remove builder tag
# builder
    execute positioned -43 -55 -156 run tp @a[tag=builder,distance=75..,tag=!dev] 25.91 -46.13 -113.22 7589.30 46.96
    tag @a[team=!admins,tag=!builder] add builder
    tag @a[team=admins,tag=builder] remove builder

# vfx
    # maps
        # map0
            # pipes
                function hipochallenge:vfx/maps/map0/pipe_sounds