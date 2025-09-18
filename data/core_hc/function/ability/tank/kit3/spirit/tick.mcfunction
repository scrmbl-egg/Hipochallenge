#>core_hc:ability/tank/kit3/spirit/tick
#
# Makes the spirit move towards its target and align its rotation.
#
# @context minecraft:allay

# run ambient fx
execute as @s at @s run function core_hc:fx/ability/tank/kit3/spirit_ambient

# spawn goal marker
execute at @s \
    run \
    function core_hc:ability/tank/kit3/spirit/summon_goal \
    with entity @s data."hc:spirit"
#>_
# @out
#   Summons a marker at the spirit's goal location with the tag
#   "tank_k3_spirit_goal".

# FIXME(scrmbl-egg): instead of using a tag, maybe it's better to use an uuid
# for the goal

# move spirit towards goal and align it
execute at @s \
    run \
    function core_hc:ability/tank/kit3/spirit/move \
    with entity @s data."hc:spirit"
