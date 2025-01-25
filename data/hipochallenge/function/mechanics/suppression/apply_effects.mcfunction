# params:
    # effects       -- Array of objects with the following properties.
        # name      -- Name of the effect.
        # amplifier -- Effect amplifier.
        # secs      -- Effect's duration in seconds.
        # hide      -- Boolean. Hide particles?

# TODO: apply with map function all effects in array and set suppression timer
# to the biggest 'secs' value in the array of objects.

#data modify storage minecraft:hipochallenge local_effect_arr set value $(effects)

# TODO: take test functions and properly implement them in this directory