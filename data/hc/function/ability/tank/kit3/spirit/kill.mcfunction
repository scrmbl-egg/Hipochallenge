#>hc:ability/tank/kit3/spirit/kill
#
# Kills all spirits whose owner is the player executing this function
#
# Also cleanses the k3 tank debuff from owner
#
# @context player

# setup temporary memory
data modify storage hc:temp spirit.owner_uuid set from entity @s UUID

# kill spirit using temporary memory (UUID to match owner)
execute as @s \
    at @s \
    run \
    function core_hc:ability/tank/kit3/spirit/kill with storage hc:temp spirit

# cleanse debuff
function hc:ability/tank/kit3/spirit/attribute_modifiers/owner_cleanse

# clear temporary memory
data remove storage hc:temp spirit
