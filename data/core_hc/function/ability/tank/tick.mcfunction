#>core_hc:ability/tank/tick
#
# Tick function for the tank class abilities.

# TODO: change and format following commands

## kit 1
# castle
# TODO: handle castle cooldown

# goat horn targets
execute as @a \
    if items entity @s weapon.* *[ \
        minecraft:custom_data={ \
            "hc:item_id":"tank_k1_goat_horn", \
        } \
    ] \
    run \
    function core_hc:ability/tank/kit1/goat_horn/show_targets

## kit 2
# trident
# TODO: handle trident return

# goat horn
# TODO: handle tank kit 2 goat horn cooldown
# TODO: play sounds depending on the amount of recovery ticks

## kit 3
# spirit
# TODO: handle spirit behaviour
execute as @e[type=minecraft:allay,tag=hc.TankKit3Spirit] \
    run \
    function core_hc:ability/tank/kit3/spirit/tick

# bubble shield
# TODO: handle bubble shield tick
