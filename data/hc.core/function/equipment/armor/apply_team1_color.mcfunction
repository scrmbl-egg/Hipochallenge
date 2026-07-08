#>hc.core:equipment/armor/apply_team_color
#
# Applies the first team's color to the player's armor.
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
    hc:main vars.team_contexts.team1.color_preset.armor_dye_color
data modify storage hc:temp set_color.chest.dyed_color \
    set from storage \
    hc:main vars.team_contexts.team1.color_preset.armor_dye_color
data modify storage hc:temp set_color.legs.dyed_color \
    set from storage \
    hc:main vars.team_contexts.team1.color_preset.armor_dye_color
data modify storage hc:temp set_color.feet.dyed_color \
    set from storage \
    hc:main vars.team_contexts.team1.color_preset.armor_dye_color

# copy team's trim material
data modify storage \
    hc:temp set_color.head.trim.material \
    set from storage \
    hc:main vars.team_contexts.team1.color_preset.trim_material
data modify storage \
    hc:temp set_color.chest.trim.material \
    set from storage \
    hc:main vars.team_contexts.team1.color_preset.trim_material
data modify storage \
    hc:temp set_color.legs.trim.material \
    set from storage \
    hc:main vars.team_contexts.team1.color_preset.trim_material
data modify storage \
    hc:temp set_color.feet.trim.material \
    set from storage \
    hc:main vars.team_contexts.team1.color_preset.trim_material
# copy armor's trim pattern
execute if items entity @s armor.head *[minecraft:trim] \
    run \
    data modify storage \
    hc:temp set_color.head.trim.pattern \
    set from entity @s equipment.head.components."minecraft:trim".pattern
execute if items entity @s armor.chest *[minecraft:trim] \
    run \
    data modify storage \
    hc:temp set_color.chest.trim.pattern \
    set from entity @s equipment.chest.components."minecraft:trim".pattern
execute if items entity @s armor.legs *[minecraft:trim] \
    run \
    data modify storage \
    hc:temp set_color.legs.trim.pattern \
    set from entity @s equipment.legs.components."minecraft:trim".pattern
execute if items entity @s armor.feet *[minecraft:trim] \
    run \
    data modify storage \
    hc:temp set_color.feet.trim.pattern \
    set from entity @s equipment.feet.components."minecraft:trim".pattern

## apply head
execute if items entity @s armor.head *[ \
    minecraft:trim, \
    minecraft:custom_data~{"hc:item/armor/apply_team_trim_material":{}} \
] \
    run \
    function hc.core:equipment/armor/apply_trim \
    with storage hc:temp set_color.head
execute if items entity @s armor.head *[ \
    minecraft:dyed_color, \
    minecraft:custom_data~{"hc:item/armor/apply_team_dye_color":{}} \
] \
    run \
    function hc.core:equipment/armor/apply_dyed_color \
    with storage hc:temp set_color.head

## apply chest
execute if items entity @s armor.chest *[ \
    minecraft:trim, \
    minecraft:custom_data~{"hc:item/armor/apply_team_trim_material":{}} \
] \
    run \
    function hc.core:equipment/armor/apply_trim \
    with storage hc:temp set_color.chest
execute if items entity @s armor.chest *[ \
    minecraft:dyed_color, \
    minecraft:custom_data~{"hc:item/armor/apply_team_dye_color":{}} \
] \
    run \
    function hc.core:equipment/armor/apply_dyed_color \
    with storage hc:temp set_color.chest

## apply legs
execute if items entity @s armor.legs *[ \
    minecraft:trim, \
    minecraft:custom_data~{"hc:item/armor/apply_team_trim_material":{}} \
] \
    run \
    function hc.core:equipment/armor/apply_trim \
    with storage hc:temp set_color.legs
execute if items entity @s armor.legs *[ \
    minecraft:dyed_color, \
    minecraft:custom_data~{"hc:item/armor/apply_team_dye_color":{}} \
] \
    run \
    function hc.core:equipment/armor/apply_dyed_color \
    with storage hc:temp set_color.legs

## apply feet
execute if items entity @s armor.feet *[ \
    minecraft:trim, \
    minecraft:custom_data~{"hc:item/armor/apply_team_trim_material":{}} \
] \
    run \
    function hc.core:equipment/armor/apply_trim \
    with storage hc:temp set_color.feet
execute if items entity @s armor.feet *[ \
    minecraft:dyed_color, \
    minecraft:custom_data~{"hc:item/armor/apply_team_dye_color":{}} \
] \
    run \
    function hc.core:equipment/armor/apply_dyed_color \
    with storage hc:temp set_color.feet

# free data
data remove storage hc:temp set_color
