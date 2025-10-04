#>hipochallenge:equipment/equip_armor
#
# Equips armor to the player depending on the player's class.
#
# @context player

# guard clause
execute as @s unless predicate hipochallenge:team/is_in_pvp_team \
    run \
    return run \
    function hipochallenge:msg/private/send_error { \
        text:{ \
            translate:"hc.msg.private.error.not_belonging_to_team_with_armor", \
            fallback:"You don't belong in a team that is allowed to equip armor", \
        }, \
    }
execute as @s unless predicate hipochallenge:class/has_selected \
    run \
    return run \
    function hipochallenge:msg/debug/send_error { \
        text:[ \
            "", \
            {selector:"@s"}, \
            " couldn't equip armor because they have no class selected.", \
        ], \
    }

# clear armor items
item replace entity @s armor.head with minecraft:air 1
item replace entity @s armor.chest with minecraft:air 1
item replace entity @s armor.legs with minecraft:air 1
item replace entity @s armor.feet with minecraft:air 1

## setup getters and get class and team data
# class armor loot tables
data modify storage hc:temp equip_armor.get_loot_tables_params set value { \
    member_name:"armor_loot_tables", \
    out_storage:"hc:temp", \
    out_nbt:"equip_armor.loot_tables", \
}
execute store result storage \
    hc:temp equip_armor.get_loot_tables_params.class_id \
    int 1 \
    run \
    scoreboard players get @s hc.Class

function core_hc:class/get_data_member \
    with storage hc:temp equip_armor.get_loot_tables_params

# class attributes
data modify storage hc:temp equip_armor.get_attributes_params set value { \
    member_name:"attributes", \
    out_storage:"hc:temp", \
    out_nbt:"equip_armor.attributes", \
}
execute store result \
    storage hc:temp equip_armor.get_attributes_params.class_id \
    int 1 \
    run \
    scoreboard players get @s hc.Class

function core_hc:class/get_data_member \
    with storage hc:temp equip_armor.get_attributes_params

# team's dust color
data modify storage hc:temp equip_armor.fx set value { \
    dust_color:[0.0, 0.0, 0.0], \
}
execute if predicate hipochallenge:team/is_in_team1 \
    run \
    data modify storage hc:temp equip_armor.fx.dust_color \
    set from storage hc:main \
    vars.team_contexts.team1.preset.dust_color
execute if predicate hipochallenge:team/is_in_team2 \
    run \
    data modify storage hc:temp equip_armor.fx.dust_color \
    set from storage hc:main \
    vars.team_contexts.team2.preset.dust_color
execute if predicate hipochallenge:team/is_in_neutral_team \
    run \
    data modify storage hc:temp equip_armor.fx.dust_color \
    set from storage hc:main \
    consts.team_presets[{internal_name:"neutral"}].dust_color

## equip and show fx
# loot armor tables
function core_hc:equipment/armor/loot_class_armor \
    with storage hc:temp equip_armor.loot_tables

# apply team color to armor
execute if predicate hipochallenge:team/is_in_team1 \
    run \
    function core_hc:equipment/armor/apply_team1_color
execute if predicate hipochallenge:team/is_in_team2 \
    run \
    function core_hc:equipment/armor/apply_team2_color

# modify armor, removing attribute modifiers
item modify entity @s armor.head core_hc:equipment/no_armor_modifiers
item modify entity @s armor.chest core_hc:equipment/no_armor_modifiers
item modify entity @s armor.legs core_hc:equipment/no_armor_modifiers
item modify entity @s armor.feet core_hc:equipment/no_armor_modifiers

# apply attributes
function core_hc:util/attribute/class/apply_attributes \
    with storage hc:temp equip_armor.attributes

# show fx (with team's dust color)
execute at @s \
    run \
    function core_hc:fx/equipment/equip_armor \
    with storage hc:temp equip_armor.fx

# free memory
data remove storage hc:temp equip_armor
