#>hc:util/attribute/remove_all_modifiers
#
# Removes all attribute modifiers from the calling entity.
#
# @context entity

# set up local data
data modify storage hc:temp rm_mods set value { \
    mod_attr:[], \
}

# TODO: check JE 26.2 attributes

## CHECK EVERY ATTRIBUTE
# minecraft:air_drag_modifier (JE 26.2)
#execute if data entity @s \
    attributes[{id:"minecraft:air_drag_modifier"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:air_drag_modifier"}]

# minecraft:armor
execute if data entity @s \
    attributes[{id:"minecraft:armor"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:armor"}]

# minecraft:armor_toughness
execute if data entity @s \
    attributes[{id:"minecraft:armor_toughness"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:armor_toughness"}]

# minecraft:attack_damage
execute if data entity @s \
    attributes[{id:"minecraft:attack_damage"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:attack_damage"}]

# minecraft:attack_knockback
execute if data entity @s \
    attributes[{id:"minecraft:attack_knockback"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:attack_knockback"}]

# minecraft:attack_reach (JE combat tests)
#execute if data entity @s \
    attributes[{id:"minecraft:attack_reach"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:attack_reach"}]

# minecraft:attack_speed
execute if data entity @s \
    attributes[{id:"minecraft:attack_speed"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:attack_speed"}]

# minecraft:below_name_distance (JE 26.2)
#execute if data entity @s \
    attributes[{id:"minecraft:below_name_distance"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:below_name_distance"}]

# minecraft:block_break_speed
execute if data entity @s \
    attributes[{id:"minecraft:block_break_speed"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:block_break_speed"}]

# minecraft:block_interaction_range
execute if data entity @s \
    attributes[{id:"minecraft:block_interaction_range"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:block_interaction_range"}]

# minecraft:bounciness (JE 26.2)
#execute if data entity @s \
    attributes[{id:"minecraft:bounciness"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:bounciness"}]

# minecraft:burning_time
execute if data entity @s \
    attributes[{id:"minecraft:burning_time"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:burning_time"}]

# minecraft:camera_distance
execute if data entity @s \
    attributes[{id:"minecraft:camera_distance"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:camera_distance"}]

# minecraft:entity_interaction_range
execute if data entity @s \
    attributes[{id:"minecraft:entity_interaction_range"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:entity_interaction_range"}]

# minecraft:explosion_knockback_resistance
execute if data entity @s \
    attributes[{id:"minecraft:explosion_knockback_resistance"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:explosion_knockback_resistance"}]

# minecraft:entity_interaction_range
execute if data entity @s \
    attributes[{id:"minecraft:entity_interaction_range"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:entity_interaction_range"}]

# minecraft:flying_speed
execute if data entity @s \
    attributes[{id:"minecraft:flying_speed"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:flying_speed"}]

# minecraft:follow_range
execute if data entity @s \
    attributes[{id:"minecraft:follow_range"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:follow_range"}]

# minecraft:friction_modifier (JE 26.2)
#execute if data entity @s \
    attributes[{id:"minecraft:friction_modifier"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:friction_modifier"}]

# minecraft:gravity
execute if data entity @s \
    attributes[{id:"minecraft:gravity"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:gravity"}]

# minecraft:jump_strength
execute if data entity @s \
    attributes[{id:"minecraft:jump_strength"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:jump_strength"}]

# minecraft:knockback_resistance
execute if data entity @s \
    attributes[{id:"minecraft:knockback_resistance"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:knockback_resistance"}]

# minecraft:luck
execute if data entity @s \
    attributes[{id:"minecraft:luck"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:luck"}]

# minecraft:max_absorption
execute if data entity @s \
    attributes[{id:"minecraft:max_absorption"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:max_absorption"}]

# minecraft:max_health
execute if data entity @s \
    attributes[{id:"minecraft:max_health"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:max_health"}]

# minecraft:mining_efficiency
execute if data entity @s \
    attributes[{id:"minecraft:mining_efficiency"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:mining_efficiency"}]

# minecraft:movement_efficiency
execute if data entity @s \
    attributes[{id:"minecraft:movement_efficiency"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:movement_efficiency"}]

# minecraft:movement_speed
execute if data entity @s \
    attributes[{id:"minecraft:movement_speed"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:movement_speed"}]

# minecraft:name_tag_distance
#execute if data entity @s \
    attributes[{id:"minecraft:name_tag_distance"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:name_tag_distance"}]

# minecraft:oxygen_bonus
execute if data entity @s \
    attributes[{id:"minecraft:oxygen_bonus"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:oxygen_bonus"}]

# minecraft:safe_fall_distance
execute if data entity @s \
    attributes[{id:"minecraft:safe_fall_distance"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:safe_fall_distance"}]

# minecraft:scale
execute if data entity @s \
    attributes[{id:"minecraft:scale"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:scale"}]

# minecraft:spawn_reinforcements
execute if data entity @s \
    attributes[{id:"minecraft:spawn_reinforcements"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:spawn_reinforcements"}]

# minecraft:sneaking_speed
execute if data entity @s \
    attributes[{id:"minecraft:sneaking_speed"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:sneaking_speed"}]

# minecraft:step_height
execute if data entity @s \
    attributes[{id:"minecraft:step_height"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:step_height"}]

# minecraft:submerged_mining_speed
execute if data entity @s \
    attributes[{id:"minecraft:submerged_mining_speed"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:submerged_mining_speed"}]

# minecraft:sweeping_damage_ratio
execute if data entity @s \
    attributes[{id:"minecraft:sweeping_damage_ratio"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:sweeping_damage_ratio"}]

# minecraft:tempt_range
execute if data entity @s \
    attributes[{id:"minecraft:tempt_range"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:tempt_range"}]

# minecraft:water_movement_efficiency
execute if data entity @s \
    attributes[{id:"minecraft:water_movement_efficiency"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:water_movement_efficiency"}]
# minecraft:entity_interaction_range
execute if data entity @s \
    attributes[{id:"minecraft:entity_interaction_range"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:entity_interaction_range"}]
# minecraft:waypoint_receive_range
execute if data entity @s \
    attributes[{id:"minecraft:waypoint_receive_range"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:waypoint_receive_range"}]

# minecraft:waypoint_transmit_range
execute if data entity @s \
    attributes[{id:"minecraft:waypoint_transmit_range"}].modifiers \
    run \
    data modify storage hc:temp rm_mods.mod_attr \
    append from entity @s \
    attributes[{id:"minecraft:waypoint_transmit_range"}]


## ITERATE AND REMOVE EACH POSSIBLE MODIFIER

# minecraft:air_drag_modifier
#execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:air_drag_modifier"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:air_drag_modifier'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:air_drag_modifier", \
        }, \
        index_macro:"__index__", \
    }


# minecraft:armor
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:armor"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:armor'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:armor", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:armor_toughness
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:armor_toughness"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:armor_toughness'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:armor_toughness", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:attack_damage
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:attack_damage"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:attack_damage'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:attack_damage", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:attack_knockback
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:attack_knockback"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:attack_knockback'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:attack_knockback", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:attack_reach (JE combat tests)
#execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:attack_reach"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:attack_reach'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:attack_reach", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:attack_speed
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:attack_speed"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:attack_speed'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:attack_speed", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:below_name_distance (JE 26.2)
#execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:below_name_distance"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:below_name_distance'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:below_name_distance", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:block_break_speed
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:block_break_speed"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:block_break_speed'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:block_break_speed", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:block_interaction_range
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:block_interaction_range"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:block_interaction_range'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:block_interaction_range", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:bounciness (JE 26.2)
#execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:bounciness"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:bounciness'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:bounciness", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:burning_time
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:burning_time"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:burning_time'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:burning_time", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:camera_distance
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:camera_distance"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:camera_distance'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:camera_distance", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:entity_interaction_range
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:entity_interaction_range"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:entity_interaction_range'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:entity_interaction_range", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:explosion_knockback_resistance
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:explosion_knockback_resistance"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:explosion_knockback_resistance'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:explosion_knockback_resistance", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:entity_interaction_range
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:entity_interaction_range"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:entity_interaction_range'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:entity_interaction_range", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:flying_speed
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:flying_speed"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:flying_speed'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:flying_speed", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:follow_range
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:follow_range"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:follow_range'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:follow_range", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:friction_modifier (JE 26.2)
#execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:friction_modifier"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:friction_modifier'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:friction_modifier", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:gravity
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:gravity"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:gravity'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:gravity", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:jump_strength
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:jump_strength"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:jump_strength'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:jump_strength", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:knockback_resistance
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:knockback_resistance"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:knockback_resistance'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:knockback_resistance", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:luck
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:luck"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:luck'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:luck", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:max_absorption
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:max_absorption"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:max_absorption'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:max_absorption", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:max_health
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:max_health"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:max_health'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:max_health", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:mining_efficiency
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:mining_efficiency"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:mining_efficiency'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:mining_efficiency", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:movement_efficiency
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:movement_efficiency"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:movement_efficiency'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:movement_efficiency", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:movement_speed
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:movement_speed"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:movement_speed'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:movement_speed", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:name_tag_distance
#execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:name_tag_distance"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:name_tag_distance'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:name_tag_distance", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:oxygen_bonus
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:oxygen_bonus"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:oxygen_bonus'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:oxygen_bonus", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:safe_fall_distance
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:safe_fall_distance"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:safe_fall_distance'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:safe_fall_distance", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:scale
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:scale"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:scale'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:scale", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:spawn_reinforcements
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:spawn_reinforcements"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:spawn_reinforcements'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:spawn_reinforcements", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:sneaking_speed
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:sneaking_speed"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:sneaking_speed'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:sneaking_speed", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:step_height
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:step_height"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:step_height'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:step_height", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:submerged_mining_speed
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:submerged_mining_speed"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:submerged_mining_speed'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:submerged_mining_speed", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:sweeping_damage_ratio
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:sweeping_damage_ratio"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:sweeping_damage_ratio'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:sweeping_damage_ratio", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:tempt_range
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:tempt_range"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:tempt_range'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:tempt_range", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:water_movement_efficiency
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:water_movement_efficiency"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:water_movement_efficiency'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:water_movement_efficiency", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:entity_interaction_range
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:entity_interaction_range"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:entity_interaction_range'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:entity_interaction_range", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:waypoint_receive_range
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:waypoint_receive_range"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:waypoint_receive_range'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:waypoint_receive_range", \
        }, \
        index_macro:"__index__", \
    }

# minecraft:waypoint_transmit_range
execute if data storage hc:temp \
    rm_mods.mod_attr[{id:"minecraft:waypoint_transmit_range"}] \
    run \
    function std:array/for_each_unwrap { \
        array_storage:"hc:temp", \
        array_nbt:"rm_mods.mod_attr[{id:'minecraft:waypoint_transmit_range'}].modifiers", \
        function:"hc:util/attribute/remove_modifier", \
        context_args:{ \
            attribute:"minecraft:waypoint_transmit_range", \
        }, \
        index_macro:"__index__", \
    }

# free memory
data remove storage hc:temp rm_mods
