#>core_hc:score/class/tank/tick_timers
#
# Ticks all tank timer score objectives.

# kit 1

# kit 2
execute as @a[scores={hc.TankKit2TridentCooldown=0..}] \
    run \
    scoreboard players remove @s hc.TankKit2TridentCooldown 1
execute as @a[scores={hc.TankKit2GoatHornRecoveryTicks=0..}] \
    run \
    scoreboard players remove @s hc.TankKit2GoatHornRecoveryTicks 1

# kit 3

# perk 1
execute as @a[scores={hc.TankPerk1NutritiousMealCooldown=0..}] \
    run \
    scoreboard players remove @s hc.TankPerk1NutritiousMealCooldown 1

# perk 2

# perk 3
