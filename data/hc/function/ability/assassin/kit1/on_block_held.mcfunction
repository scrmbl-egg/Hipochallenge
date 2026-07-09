#>hc:ability/assassin/kit1/on_block_held
#
# Executes all commands when the player holds block.
#
# @context player

# revoke detection advancement
advancement revoke @s only hc.core:class/assassin/kit1/blocked_with_sword

# if the player wasn't already in any parrying window, set the parrying window
# ticks (this makes the `is_in_parry_window` predicate true)
execute unless predicate hc.core:class/assassin/kit1/is_in_parry_window \
    store result score @s hc.AssassinKit1ParryWindowRemainingTicks \
    run \
    data get storage hc:main \
    consts.classes[{key:"hc:assassin"}].kits[{id:1}].\
    assassin_k1_data.parry.window_duration_ticks

# if player wasn't in the parrying window, also set the parrying window ticks
execute unless score @s hc.AssassinKit1BlockRemainingTicks matches 0.. \
    store result score @s hc.AssassinKit1BlockRemainingTicks \
    run \
    data get storage hc:main \
    consts.classes[{key:"hc:assassin"}].kits[{id:1}].\
    assassin_k1_data.parry.window_duration_ticks

# tag the player as someone who is holding block, so we can defer the decrement
# of the hc.AssassinKit1BlockRemainingTicks score
tag @s add __hc.AssassinKit1IsBlocking
