schedule function hipochallenge:main_sec 1s

# hunger
    effect give @a minecraft:saturation infinite 0 true

# ids
    scoreboard players add @a id 0
    execute as @a[scores={id=0}] at @s run function hipochallenge:unique/generate_id

# vfx
    # FIXME: this should be moved to a maps/main function
    # maps
        # map0
            # pipes
                function hipochallenge:vfx/maps/map0/pipe_sounds
