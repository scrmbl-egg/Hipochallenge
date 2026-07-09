#>hc:ability/recon/kit2/give_flare_arrow_and_reset_cooldown
#
# Tries to give a new flare arrow, and sets the next cooldown if more can be
# given in the future.
#
# @context player

# loot arrow
loot give @s loot hc:class/recon/item/kit2/flare_arrow

# play fx
execute at @s \
    run \
    function hc.core:fx/ability/recon/kit2/flare_arrow_given

# create local scoreboard
scoreboard objectives add __hc.NewFlareArrow dummy

# get max amount of arrows the player can have
execute store result score hc:max __hc.NewFlareArrow \
    run \
    data get storage hc:main consts.\
    classes[{key:"hc:recon"}].\
    kits[{id:2}].recon_k2_data.flare_arrow.max_amount

# get current amount of arrows (+1 if charged in crossbow)
execute store result score hc:f_arrows __hc.NewFlareArrow \
    run \
    clear @s *[ \
        minecraft:custom_data~{"hc:item/id":"hc:recon/kit2/flare_arrow"} \
    ] 0
execute if items entity @s container.* *[ \
    minecraft:custom_data~{"hc:item/id":"hc:recon/kit2/flare_arrow_crossbow"}, \
    minecraft:charged_projectiles=[ \
        { \
            id:"minecraft:spectral_arrow", \
            components:{ \
                "minecraft:custom_data":{ \
                    "hc:item/id":"hc:recon/kit2/flare_arrow", \
                }, \
            }, \
        }, \
    ] \
] \
    run \
    scoreboard players add hc:f_arrows __hc.NewFlareArrow 1

# give new (smaller) cooldown if player can have more arrows
execute if score \
    hc:f_arrows __hc.NewFlareArrow < hc:max __hc.NewFlareArrow \
    store result score @s hc.ReconKit2FlareArrowCooldown \
    run \
    data get storage hc:main consts.\
    classes[{key:"hc:recon"}].\
    kits[{id:2}].recon_k2_data.flare_arrow.cooldown_ticks

# free memory
scoreboard objectives remove __hc.NewFlareArrow

