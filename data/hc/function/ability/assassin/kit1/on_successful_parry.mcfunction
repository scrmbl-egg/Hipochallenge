#>hc:ability/assassin/kit1/on_successful_parry
#
# Executes all commands when the player successfully parries with the duelist
# sword.
#
# @context player

# revoke detection advancement
advancement revoke @s only core_hc:class/assassin/kit1/parried_with_sword

# reset scores back to their original state
scoreboard players set @s hc.AssassinKit1ParryWindowRemainingTicks -1
scoreboard players set @s hc.AssassinKit1BlockRemainingTicks -1

# TODO: call function here
execute on attacker \
    at @s \
    run \
    say i was parried

# TODO: maybe this should be data driven.
function hc:util/item/modify_with_id { \
    id:"hc:assassin/kit1/sword", \
    modifier:"hc:item/class/assassin/kit1/sword/enhanced", \
}
