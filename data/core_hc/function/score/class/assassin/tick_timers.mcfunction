#>core_hc:score/class/assassin/tick_timers
#
# Ticks all assassin timer score objectives.

# kit 1
execute as @a[scores={hc.AssassinKit1BlockRemainingTicks=0..}] \
    run \
    scoreboard players remove @s hc.AssassinKit1BlockRemainingTicks 1
execute as @a[scores={hc.AssassinKit1ParryWindowRemainingTicks=0..}] \
    run \
    scoreboard players remove @s hc.AssassinKit1ParryWindowRemainingTicks 1
execute as @a[scores={hc.AssassinKit1ParryCooldown=0..}] \
    run \
    scoreboard players remove @s hc.AssassinKit1ParryCooldown 1
execute as @a[scores={hc.AssassinKit1EnhancedSwordRemainingTicks=0..}] \
    run \
    scoreboard players remove @s hc.AssassinKit1EnhancedSwordRemainingTicks 1

# kit 2

# kit 3

# perk 1

# perk 2

# perk 3
