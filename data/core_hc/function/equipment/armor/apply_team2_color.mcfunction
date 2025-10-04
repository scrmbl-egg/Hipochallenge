#>core_hc:equipment/armor/apply_team_color
#
# Applies the second team's color to the player's armor.
#
# @context player

# define initial schema
data modify storage hc:temp set_color set value { \
    head:{ \
        slot:"head", \
        trim:{material:"",pattern:""}, \
        dyed_color:0, \
    }, \
    chest:{ \
        slot:"chest", \
        trim:{material:"",pattern:""}, \
        dyed_color:0, \
    }, \
    legs:{ \
        slot:"legs", \
        trim:{material:"",pattern:""}, \
        dyed_color:0, \
    }, \
    feet:{ \
        slot:"feet", \
        trim:{material:"",pattern:""}, \
        dyed_color:0, \
    }, \
}

# copy team's armor color
data modify storage hc:temp set_color.head.dyed_color \
    set from storage \
    hc:main vars.team_contexts.team2.preset.armor_color
data modify storage hc:temp set_color.chest.dyed_color \
    set from storage \
    hc:main vars.team_contexts.team2.preset.armor_color
data modify storage hc:temp set_color.legs.dyed_color \
    set from storage \
    hc:main vars.team_contexts.team2.preset.armor_color
data modify storage hc:temp set_color.feet.dyed_color \
    set from storage \
    hc:main vars.team_contexts.team2.preset.armor_color

# copy team's trim material
data modify storage \
    hc:temp set_color.head.trim.material \
    set from storage \
    hc:main vars.team_contexts.team2.preset.trim_material
data modify storage \
    hc:temp set_color.chest.trim.material \
    set from storage \
    hc:main vars.team_contexts.team2.preset.trim_material
data modify storage \
    hc:temp set_color.legs.trim.material \
    set from storage \
    hc:main vars.team_contexts.team2.preset.trim_material
data modify storage \
    hc:temp set_color.feet.trim.material \
    set from storage \
    hc:main vars.team_contexts.team2.preset.trim_material
# copy armor's trim pattern
execute if data entity @s equipment.head.components."minecraft:trim" \
    run \
    data modify storage \
    hc:temp set_color.head.trim.pattern \
    set from entity @s equipment.head.components."minecraft:trim".pattern
execute if data entity @s equipment.chest.components."minecraft:trim" \
    run \
    data modify storage \
    hc:temp set_color.chest.trim.pattern \
    set from entity @s equipment.chest.components."minecraft:trim".pattern
execute if data entity @s equipment.legs.components."minecraft:trim" \
    run \
    data modify storage \
    hc:temp set_color.legs.trim.pattern \
    set from entity @s equipment.legs.components."minecraft:trim".pattern
execute if data entity @s equipment.feet.components."minecraft:trim" \
    run \
    data modify storage \
    hc:temp set_color.feet.trim.pattern \
    set from entity @s equipment.feet.components."minecraft:trim".pattern

## apply head
execute if data entity @s equipment.head.components."minecraft:trim" \
    run \
    function core_hc:equipment/armor/apply_trim \
    with storage hc:temp set_color.head
execute if data entity @s equipment.head.components."minecraft:dyed_color" \
    run \
    function core_hc:equipment/armor/apply_dyed_color \
    with storage hc:temp set_color.head

## apply chest
execute if data entity @s equipment.chest.components."minecraft:trim" \
    run \
    function core_hc:equipment/armor/apply_trim \
    with storage hc:temp set_color.chest
execute if data entity @s equipment.chest.components."minecraft:dyed_color" \
    run \
    function core_hc:equipment/armor/apply_dyed_color \
    with storage hc:temp set_color.chest

## apply legs
execute if data entity @s equipment.legs.components."minecraft:trim" \
    run \
    function core_hc:equipment/armor/apply_trim \
    with storage hc:temp set_color.legs
execute if data entity @s equipment.legs.components."minecraft:dyed_color" \
    run \
    function core_hc:equipment/armor/apply_dyed_color \
    with storage hc:temp set_color.legs

## apply feet
execute if data entity @s equipment.feet.components."minecraft:trim" \
    run \
    function core_hc:equipment/armor/apply_trim \
    with storage hc:temp set_color.feet
execute if data entity @s equipment.feet.components."minecraft:dyed_color" \
    run \
    function core_hc:equipment/armor/apply_dyed_color \
    with storage hc:temp set_color.feet

# free data
data remove storage hc:temp set_color
