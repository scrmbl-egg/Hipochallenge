#>core_hc:score/class/recon/add_objectives
#
# Adds all score objectives for the recon class.

# kit 1

# kit 2
scoreboard objectives add hc.ReconKit2FlareArrowCooldown dummy

# kit 3

# perk 1

# perk 2

# perk 3

## INIT
# (-1 is default state)

execute as @a \
    unless entity @s[scores={ \
        hc.ReconKit2FlareArrowCooldown=-2147483648..2147483647 \
    }] \
    run \
    scoreboard players set @s hc.ReconKit2FlareArrowCooldown -1
