#>core_hc:death/tick
#
# Tick function for handling the player's death in a match.
#
# @context player

## NOTE:
# this function must only apply to players that are in a match team

# FIXME: is this the correct way of handling player deaths?
# - scrmbl-egg

# get player UUID
data modify storage hc:temp death.victim_uuid set from entity @s UUID

# if a killer is detected the same tick, get their UUID
execute if entity @p[scores={hc.HasKilled=1..}] \
    run \
    data modify storage hc:temp death.attacker_uuid set from entity @s UUID

# if there is no attacker/killer, run print death msg, otherwise, print kill msg
execute unless data storage hc:temp death.attacker_uuid \
    run \
    function hipochallenge:msg/match_feed/send_player_death \
    with storage hc:temp death
execute if data storage hc:temp death.attacker_uuid \
    run \
    function hipochallenge:msg/match_feed/send_player_kill \
    with storage hc:temp death

# clear dead people in match pvp teams
execute if predicate hipochallenge:team/is_in_match_pvp_team \
    run \
    function #core_hc:equipment/on_death

# tag
# TODO: this must be uncommented when a proper game state system is implemented
#tag @s add hc.Dead

# reset scores and free memory
scoreboard players set @s hc.IsDead 0
scoreboard players set @p[scores={hc.HasKilled=1..}] hc.HasKilled 0
data remove storage hc:temp death
