#>core_hc:list_info/update
#
# Updates the player list information of the player and displays it, with their
# selected class name, kit name, perk name, and match stats (kills, deaths,
# points).
#
# @context player

## NOTE:
# neutral/training players are not updated because, if they were, their class
# name and stats would add visual noise the legitimate player would need to
# filter out from the ones whose information they would need to care about.

# clear info if player if player doesn't meet the following conditions
execute unless predicate hc:team/is_in_match_pvp_team \
    run \
    return run \
    function core_hc:list_info/clear
execute unless predicate hc:has_all_options_selected \
    run \
    return run \
    function core_hc:list_info/clear

# setup temp data
data modify storage hc:temp update_list_info set value { \
    display_args:{ \
        class_text:{ \
            translate:"hc.class.name_with_icon", \
            fallback:"%2$s %1$s", \
            with:[{}, {}], \
            color:"", \
        }, \
        kit_text:{}, \
        perk_text:{}, \
    }, \ 
}

## get class_text name and icon. once added, add color field
# name
function core_hc:class/get_data_field { \
    field:"name", \
    out_storage:"hc:temp", \
    out_nbt:"update_list_info.display_args.class_text.with[0]", \
}
# icon
function core_hc:class/get_data_field { \
    field:"icon", \
    out_storage:"hc:temp", \
    out_nbt:"update_list_info.display_args.class_text.with[1]", \
}
# color
function core_hc:class/get_data_field { \
    field:"list_info.class_color", \
    out_storage:"hc:temp", \
    out_nbt:"update_list_info.display_args.class_text.color", \
}

## get kit_text. once added, add color field
function core_hc:kit/get_data_field { \
    field:"name", \
    out_storage:"hc:temp", \
    out_nbt:"update_list_info.display_args.kit_text", \
}
function core_hc:class/get_data_field { \
    field:"list_info.kit_color", \
    out_storage:"hc:temp", \
    out_nbt:"update_list_info.display_args.kit_text.color", \
}

## get perk_text. once added, add color field
function core_hc:perk/get_data_field { \
    field:"name", \
    out_storage:"hc:temp", \
    out_nbt:"update_list_info.display_args.perk_text", \
}
function core_hc:class/get_data_field { \
    field:"list_info.perk_color", \
    out_storage:"hc:temp", \
    out_nbt:"update_list_info.display_args.perk_text.color", \
}

#tellraw @a {storage:"hc:temp",nbt:"update_list_info.display_args"}

## now that every parameter is set, call display function
function core_hc:list_info/display \
    with storage hc:temp update_list_info.display_args

# free memory
data remove storage hc:temp update_list_info
