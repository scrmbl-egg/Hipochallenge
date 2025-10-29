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

# setup text schemas
data modify storage hc:temp update_list_info.display.class_text set value { \
    translate:"hc.class.name_with_icon", \
    fallback:"%2$s %1$s", \
    with:[{}, {}], \
    color:"", \
}

# prepare all function parameters
data modify storage hc:temp update_list_info.get_members set value { \
    class_id:0, \
    kit_id:0, \
    perk_id:0, \
    member_name:"", \
    out_storage:"hc:temp", \
    out_nbt:"", \
}
execute store result \
    storage hc:temp update_list_info.get_members.class_id \
    int 1 \
    run \
    scoreboard players get @s hc.Class
execute store result \
    storage hc:temp update_list_info.get_members.kit_id \
    int 1 \
    run \
    scoreboard players get @s hc.Kit
execute store result \
    storage hc:temp update_list_info.get_members.perk_id \
    int 1 \
    run \
    scoreboard players get @s hc.Perk

## get translated names
data modify storage hc:temp update_list_info.get_members.member_name \
    set value "name"

# class
data modify storage hc:temp update_list_info.get_members.out_nbt \
    set value "update_list_info.display.class_text.with[0]"
function core_hc:class/get_data_member \
    with storage hc:temp update_list_info.get_members

# kit
data modify storage hc:temp update_list_info.get_members.out_nbt \
    set value "update_list_info.display.kit_text"
function core_hc:kit/get_data_member \
    with storage hc:temp update_list_info.get_members

# perk
data modify storage hc:temp update_list_info.get_members.out_nbt \
    set value "update_list_info.display.perk_text"
function core_hc:perk/get_data_member \
    with storage hc:temp update_list_info.get_members

## get class icon
data modify storage hc:temp update_list_info.get_members.member_name \
    set value "icon"

data modify storage hc:temp update_list_info.get_members.out_nbt \
    set value "update_list_info.display.class_text.with[1]"
function core_hc:class/get_data_member \
    with storage hc:temp update_list_info.get_members

## get text component colors
# class
data modify storage hc:temp update_list_info.get_members.member_name \
    set value "list_info.class_color"
data modify storage hc:temp update_list_info.get_members.out_nbt \
    set value "update_list_info.display.class_text.color"
function core_hc:class/get_data_member \
    with storage hc:temp update_list_info.get_members

# kit
data modify storage hc:temp update_list_info.get_members.member_name \
    set value "list_info.kit_color"
data modify storage hc:temp update_list_info.get_members.out_nbt \
    set value "update_list_info.display.kit_text.color"
function core_hc:class/get_data_member \
    with storage hc:temp update_list_info.get_members

# perk
data modify storage hc:temp update_list_info.get_members.member_name \
    set value "list_info.perk_color"
data modify storage hc:temp update_list_info.get_members.out_nbt \
    set value "update_list_info.display.perk_text.color"
function core_hc:class/get_data_member \
    with storage hc:temp update_list_info.get_members


# now that every parameter is set, call display function
function core_hc:list_info/display \
    with storage hc:temp update_list_info.display


# free memory
data remove storage hc:temp update_list_info
