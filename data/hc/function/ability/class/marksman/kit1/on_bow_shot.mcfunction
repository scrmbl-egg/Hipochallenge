#>hc:ability/class/marksman/kit1/on_bow_shot
#
# Executes all commands when the player shoots the marksman bow.
#
# @context player

## NOTE:
# This function doesn't use a detection advancement.

# set first new arrow cooldown (don't if in creative mode)
execute if entity @s[gamemode=!creative] \
    store result score @s hc.MarksmanKit1NewProjectileCooldown \
    run \
    data get storage hc:main consts.\
    classes[{internal_name:"marksman"}].\
    kits[{id:1}].marksman_k1_data.arrows.new_first_cooldown_ticks
