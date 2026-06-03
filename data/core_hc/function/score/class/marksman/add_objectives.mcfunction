#>core_hc:score/class/marksman/add_objectives
#
# Adds all score objectives for the marksman class.

# kit 1
scoreboard objectives add hc.MarksmanKit1NewProjectileCooldown dummy

# kit 2
scoreboard objectives add hc.MarksmanKit2NewProjectileCooldown dummy

# kit 3
scoreboard objectives add hc.MarksmanKit3NewProjectileCooldown dummy

# perk 1


# perk 2

# perk 3

## INIT
# (-1 is default state)

execute as @a \
    unless entity @s[scores={ \
        hc.MarksmanKit1NewProjectileCooldown=-2147483648..2147483647 \
    }] \
    run \
    scoreboard players set @s hc.MarksmanKit1NewProjectileCooldown -1
execute as @a \
    unless entity @s[scores={ \
        hc.MarksmanKit2NewProjectileCooldown=-2147483648..2147483647 \
    }] \
    run \
    scoreboard players set @s hc.MarksmanKit2NewProjectileCooldown -1
execute as @a \
    unless entity @s[scores={ \
        hc.MarksmanKit3NewProjectileCooldown=-2147483648..2147483647 \
    }] \
    run \
    scoreboard players set @s hc.MarksmanKit3NewProjectileCooldown -1
