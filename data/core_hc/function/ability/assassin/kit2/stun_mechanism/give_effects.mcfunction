#>core_hc:ability/assassin/kit2/stun_mechanism/give_effects
#
# Gives the stun mechanism effects to the specified targets.
#
# @context player
# @input
#   owner_uuid: #[uuid] int[] @ 4
#       UUID of the owner.
#   team: #[team] string
#       Team that is going to be detected.
#   radius: double @ 0..
#       Radius in which the ability is going to be given.

$execute at @s \
    as @a[ \
        nbt=!{UUID:$(owner_uuid)}, \
        team=$(team), \
        distance=..$(radius), \
        sort=nearest, \
        gamemode=!spectator \
    ] \
    as @s \
    run \
    function hipochallenge:util/effect/give_ability_effects \
    with storage hc:main \
    consts.classes[{internal_name:"assassin"}].\
    kits[{id:2}].assassin_k2_data.stun_mechanism.effects_info

function hipochallenge:msg/debug/send_info { \
    text:"\"TODO: Root effect (through temporary attribute modifiers)\"", \
}
