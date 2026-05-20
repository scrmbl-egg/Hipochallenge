#>hc:ability/tank/kit3/spirit/summon
#
# Summons a spirit at the position of the player executing this function,
# to whom the spirit will set its owner and target
#
# Also applies the k3 tank debuff to owner
#
# @context player

# setup temporary memory
data modify storage hc:temp spirit.owner_uuid \
set from entity @s UUID

# summon spirit using temporary memory (UUID to match owner)
execute as @s \
    at @s \
    run \
    function core_hc:ability/tank/kit3/spirit/summon \
    with storage hc:temp spirit

# debuff user

# TODO: move function to core namespace
execute as @s \
    run \
    function hc:ability/tank/kit3/spirit/attribute_modifiers/owner_apply

# buff user (since they are the target on spawn)

# TODO: move function to core namespace
execute as @s \
    run \
    function hc:ability/tank/kit3/spirit/attribute_modifiers/target_apply

# free memory
data remove storage hc:temp spirit
