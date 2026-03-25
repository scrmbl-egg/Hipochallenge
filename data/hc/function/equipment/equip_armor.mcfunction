#>hc:equipment/equip_armor
#
# Equips armor to the player depending on the player's class.
#
# @context player

# guard clause
execute unless predicate hc:team/is_in_pvp_team \
    run \
    return run \
    function hc:msg/private/send_error/not_in_team_with_armor

# clear armor items
item replace entity @s armor.head with minecraft:air 1
item replace entity @s armor.chest with minecraft:air 1
item replace entity @s armor.legs with minecraft:air 1
item replace entity @s armor.feet with minecraft:air 1

# setup data
data modify storage hc:temp equip_armor set value { \
    loot_class_armor_args:{}, \
    apply_attributes_args:{}, \
    fx_args:{ \
        dust_color:[0, 0, 0], \
    }, \
}

## get data
# get class armor loot tables
function hc:class/get_data_field { \
    field:"armor_loot_tables", \
    out_storage:"hc:temp", \
    out_nbt:"equip_armor.loot_class_armor_args", \
}

# get class attributes
function hc:class/get_data_field { \
    field:"attributes", \
    out_storage:"hc:temp", \
    out_nbt:"equip_armor.apply_attributes_args", \
}

# get team's dust color
execute if predicate hc:team/is_in_team1 \
    run \
    data modify storage hc:temp equip_armor.fx_args.dust_color \
    set from storage \
    hc:main vars.team_contexts.team1.color_preset.dust_color
execute if predicate hc:team/is_in_team2 \
    run \
    data modify storage hc:temp equip_armor.fx_args.dust_color \
    set from storage \
    hc:main vars.team_contexts.team2.color_preset.dust_color
execute if predicate hc:team/is_in_neutral_team \
    run \
    data modify storage hc:temp equip_armor.fx_args.dust_color \
    set from storage \
    hc:main consts.team_presets[{internal_name:"hc:neutral"}].dust_color

## equip armor
# loot armor and color
function core_hc:equipment/armor/loot_class_armor \
    with storage hc:temp equip_armor.loot_class_armor_args

# apply team color to armor
execute if predicate hc:team/is_in_team1 \
    run \
    function core_hc:equipment/armor/apply_team1_color
execute if predicate hc:team/is_in_team2 \
    run \
    function core_hc:equipment/armor/apply_team2_color

# modify armor, removing attribute modifiers
item modify entity @s armor.head core_hc:equipment/no_armor_modifiers
item modify entity @s armor.chest core_hc:equipment/no_armor_modifiers
item modify entity @s armor.legs core_hc:equipment/no_armor_modifiers
item modify entity @s armor.feet core_hc:equipment/no_armor_modifiers

## apply attributes
function core_hc:util/attribute/class/apply_attributes \
    with storage hc:temp equip_armor.apply_attributes_args

## show fx (with team's dust color)
execute at @s \
    run \
    function core_hc:fx/equipment/equip_armor \
    with storage hc:temp equip_armor.fx_args

# free memory
data remove storage hc:temp equip_armor
