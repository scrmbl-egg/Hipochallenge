#>hc.core:util/item/replace_all_items_from_players
#
# Function that replaces all "hc:item/replace_with" items from all players. This
# function is only called from a schedule.

execute as @a \
    run \
    function hc.core:util/item/replace_all_replaceable_items
