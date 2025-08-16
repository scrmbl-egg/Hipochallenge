#>core_hc:player_list_info/update
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
execute \
    unless predicate hipochallenge:team/is_in_match_team \
    unless predicate hipochallenge:class/has_all_options_selected \
    run \
    return run \
    function core_hc:player_list_info/clear

# prepare all function parameters
data modify storage hc:temp update_list_info.get_members set value { \
    class_id:0, \
    kit_id:0, \
    perk_id:0, \
    data_member:"", \
    out_storage:"hc:temp", \
    out_nbt:"", \
}
execute store result \
    storage hc:temp update_list_info.get_members.class_id \
    int 1 \
    run \
    scoreboard players get @s class
execute store result \
    storage hc:temp update_list_info.get_members.kit_id \
    int 1 \
    run \
    scoreboard players get @s kit
execute store result \
    storage hc:temp update_list_info.get_members.perk_id \
    int 1 \
    run \
    scoreboard players get @s perk

## get translated names
data modify storage hc:temp update_list_info.get_members.member_name \
    set value "name"

# class
data modify storage hc:temp update_list_info.get_members.out_nbt \
    set value "update_list_info.display.class_text"
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
function core_hc:player_list_info/display \
    with storage hc:temp update_list_info.display


# free memory
data remove storage hc:temp update_list_info
