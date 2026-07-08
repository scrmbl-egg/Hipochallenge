#>hc:ability/tank/kit1/on_castle_used
#
# Executes all commands when the player uses the tank's kit 2 goat horn.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only hc.core:class/tank/kit2/used_goat_horn

# team with no abilities guard clause
execute unless predicate hc:team/is_in_pvp_team \
    run \
    return run \
    function hc:msg/private/send_error/not_in_team_with_abilities

# silenced guard clause
execute if predicate hc:mechanic/is_silenced \
    run \
    return run \
    function hc:msg/private/send/silenced_message

function hc:msg/debug/send_info {text:"\"used kit2 horn\""}

# no cooldown, item must be deleted due to it being a goat horn
# score: tank_kit2_goat_horn_cd
clear @s *[minecraft:custom_data={"hc:item/id":"hc:tank/kit2/goat_horn"}] 1

# TODO: give slowness to enemies at the start, a single time

# give tag to player
tag @s add hc.TankKit2GoatHornDetecting

execute store result score @s hc.TankKit2GoatHornRecoveryTicks \
    run \
    data get storage hc:main consts.\
    classes[{internal_name:"hc:tank"}].\
    kits[{id:2}].tank_k2_data.horn.recovery_ticks
