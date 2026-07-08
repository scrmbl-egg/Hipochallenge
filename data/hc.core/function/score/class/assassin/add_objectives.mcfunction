#>hc.core:score/class/assassin/add_objectives
#
# Adds all score objectives for the assassin class.

# kit 1
scoreboard objectives add hc.AssassinKit1BlockRemainingTicks dummy
scoreboard objectives add hc.AssassinKit1ParryWindowRemainingTicks dummy
scoreboard objectives add hc.AssassinKit1ParryCooldown dummy
scoreboard objectives add hc.AssassinKit1EnhancedSwordRemainingTicks dummy

# kit 2

# kit 3

# perk 1

# perk 2

# perk 3

## INIT
# (-1 is default state)

execute as @a \
    unless entity @s[scores={ \
        hc.AssassinKit1BlockRemainingTicks=-2147483648..2147483647 \
    }] \
    run \
    scoreboard players set @s hc.AssassinKit1BlockRemainingTicks -1
execute as @a \
    unless entity @s[scores={ \
        hc.AssassinKit1ParryWindowRemainingTicks=-2147483648..2147483647 \
    }] \
    run \
    scoreboard players set @s hc.AssassinKit1ParryWindowRemainingTicks -1
execute as @a \
    unless entity @s[scores={ \
        hc.AssassinKit1ParryCooldown=-2147483648..2147483647 \
    }] \
    run \
    scoreboard players set @s hc.AssassinKit1ParryCooldown -1
execute as @a \
    unless entity @s[scores={ \
        hc.AssassinKit1EnhancedSwordRemainingTicks=-2147483648..2147483647 \
    }] \
    run \
    scoreboard players set @s hc.AssassinKit1EnhancedSwordRemainingTicks -1
