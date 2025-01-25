# params:
    # effects       -- Array of objects with the following properties.
        # name      -- Name of the effect.
        # amplifier -- Effect amplifier.
        # secs      -- Effect's duration in seconds.
        # hide      -- Boolean. Hide particles?

$data modify storage minecraft:hipochallenge local_effect_arr set value $(effects)

execute as @s run function std:array/map/run {arr_st:"minecraft:hipochallenge",arr_path:"local_effect_arr",fn:"hipochallenge:mechanics/suppression/effects/give_effects/unwrap_effect_and_apply_st",fn_st:"minecraft:hipochallenge",elem_macro:"current_elem"}

data remove storage minecraft:hipochallenge local_effect_arr