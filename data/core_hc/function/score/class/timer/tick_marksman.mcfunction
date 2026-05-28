#>core_hc:score/class/timer/tick_marksman
#
# Ticks all marksman timer score objectives.

# kit 1
execute as @a[scores={hc.MarksmanKit1NewProjectileCooldown=0..}] \
    run \
    scoreboard players remove @s hc.MarksmanKit1NewProjectileCooldown 1

# kit 2
execute as @a[scores={hc.MarksmanKit2NewProjectileCooldown=0..}] \
    run \
    scoreboard players remove @s hc.MarksmanKit2NewProjectileCooldown 1

# kit 3
execute as @a[scores={hc.MarksmanKit3NewProjectileCooldown=0..}] \
    run \
    scoreboard players remove @s hc.MarksmanKit3NewProjectileCooldown 1

# perk 1

# perk 2

# perk 3
