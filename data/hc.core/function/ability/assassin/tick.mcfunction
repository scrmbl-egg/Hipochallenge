#>hc.core:ability/assassin/tick
#
# Tick function for the assassin class abilities.

# FIXME: HurtTime is also affected when the player blocks an attack, which makes
# the `hc:entity/was_just_damaged` predicate not really reliable for this
# specific situation. Maybe the predicate should be changed to detect a non-zero
# score for received damaged instead of detecting HurtTime.

## kit 1

## NOTE:
# There is no easy way to detect when a player stops using an item in Minecraft,
# so, to make the parry work, two scores are involved:
#
# - hc.AssassinKit1ParryWindowRemainingTicks: tracks the remaining ticks ot the
#   parry window once the player blocks for the first time
# - hc.AssassinKit1BlockRemainingTicks: tracks the remaining ticks the player
#   can hold the block
#
# The parry is considered a failure if the player either releases the block
# early (the 2 scores will be different) or if the parry window ends and the
# player is still holding

# decrement remaining block ticks if the player is blocking with the duelist
# sword
execute as @a[tag=__hc.AssassinKit1IsBlocking] \
    run \
    scoreboard players remove @s hc.AssassinKit1BlockRemainingTicks 1
execute as @a[tag=__hc.AssassinKit1IsBlocking] \
    run \
    tag @s remove __hc.AssassinKit1IsBlocking

# decrement parry window ticks once the player clicked the block button.
execute as @a[predicate=hc.core:class/assassin/kit1/is_in_parry_window] \
    run \
    scoreboard players remove @s hc.AssassinKit1ParryWindowRemainingTicks 1

execute as @a if score \
    @s hc.AssassinKit1ParryWindowRemainingTicks < \
    @s hc.AssassinKit1BlockRemainingTicks \
    run \
    scoreboard players set @s hc.AssassinKit1ParryWindowRemainingTicks 0

execute as @a[scores={hc.AssassinKit1ParryWindowRemainingTicks=0}] \
    run \
    function hc:ability/assassin/kit1/on_failed_parry

# clear amulet when hit with it in hand
execute as @a[predicate=hc:entity/was_just_damaged] \
    if items entity @s weapon.* *[ \
        minecraft:custom_data~{"hc:item/id":"hc:assassin/kit1/crystal_amulet"} \
    ] \
    run \
    function hc.core:ability/assassin/kit1/clear_crystal_amulet

## kit 2

## kit 3
