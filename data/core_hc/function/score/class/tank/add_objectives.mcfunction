#>core_hc:score/class/tank/add_objectives
#
# Adds all score objectives for the tank class.

# kit 1

# kit 2
scoreboard objectives add hc.TankKit2TridentCooldown dummy
scoreboard objectives add hc.TankKit2GoatHornRecoveryTicks dummy

# kit 3

# perk 1
scoreboard objectives add hc.TankPerk1NutritiousMealCooldown dummy

# perk 2

# perk 3

## INIT
# (-1 is default state)

execute as @a \
    unless entity @s[scores={ \
        hc.TankKit2TridentCooldown=-2147483648..2147483647 \
    }] \
    run \
    scoreboard players set @s hc.TankKit2TridentCooldown -1
execute as @a \
    unless entity @s[scores={ \
        hc.TankKit2GoatHornRecoveryTicks=-2147483648..2147483647 \
    }] \
    run \
    scoreboard players set @s hc.TankKit2GoatHornRecoveryTicks -1
execute as @a \
    unless entity @s[scores={ \
        hc.TankPerk1NutritiousMealCooldown=-2147483648..2147483647 \
    }] \
    run \
    scoreboard players set @s hc.TankPerk1NutritiousMealCooldown -1
