#>core_hc:second
#
# Datapack function that executes each second (20 ticks).

# schedule next
schedule function core_hc:second 1s

# give infinite hunger
effect give @a minecraft:saturation infinite 0 true

# vfx
    # FIXME: this should be moved to a levels/tick function
    # maps
        # map0
            # pipes
                function hipochallenge:vfx/maps/map0/pipe_sounds
