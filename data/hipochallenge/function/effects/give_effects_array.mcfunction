# params:
    # effects[]
        # id
        # amplifier
        # duration_seconds
        # hide_particles
    # give_suppression

# TODO: write function where all effects are given, and give suppression if
# the parameters specify it

# save macros
$data modify storage minecraft:hipochallenge local_give_effects_params.effects set value $(effects)
$data modify storage minecraft:hipochallenge local_give_effects_params.give_suppression set value $(give_suppression)b

# TODO: change std:array/map to support new memory changes

#data modify storage minecraft:hipochallenge local_map_params.arr_st set value "minecraft:hipochallenge"
#data modify storage minecraft:hipochallenge local_map_params.arr_path set value "local_give_effects_params.effects"
#data modify storage minecraft:hipochallenge local_map_params.fn set value "hipochallenge:effects/internal/map_effect_array"
#data modify storage minecraft:hipochallenge local_map_params.fn_st set value "minecraft:hipochallenge"
#data modify storage minecraft:hipochallenge local_map_params.elem_macro set value "current_effect"

#function std:array/map with storage minecraft:hipochallenge local_map_params

data remove storage minecraft:hipochallenge local_give_effects_params
data remove storage minecraft:hipochallenge local_map_params
