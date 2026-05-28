#>core_hc:score/class/timer/tick_tank
#
# Ticks all tank timer score objectives.

# kit 1

# kit 2
execute as @a[scores={hc.TankKit2TridentCooldown=0..}] \
    run \
    scoreboard players remove @s hc.TankKit2TridentCooldown 1

# kit 3

# perk 1
execute as @a[scores={hc.TankPerk1NutritiousMealCooldown=0..}] \
    run \
    scoreboard players remove @s hc.TankPerk1NutritiousMealCooldown 1

# perk 2

# perk 3
