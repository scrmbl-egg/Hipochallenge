#>core_hc:trigger/proj_cooldown
#
# Trigger for enabling or disabling projectile cooldown (training mode only).
#
# @context player

# create local score (for branching)
scoreboard objectives add __hc.ProjCooldownSwitch dummy

# set score to 0
scoreboard players set @s __hc.ProjCooldownSwitch 0

# set to 1 if tag is present
execute if entity @s[tag=hc.ProjectileCooldownDisabled] \
    run \
    scoreboard players set @s __hc.ProjCooldownSwitch 1

# if tag is not present, add
execute if score @s __hc.ProjCooldownSwitch matches 0 \
    run \
    tag @s add hc.ProjectileCooldownDisabled
# otherwise, remove
execute if score @s __hc.ProjCooldownSwitch matches 1 \
    run \
    tag @s remove hc.ProjectileCooldownDisabled

# send msg
data modify storage hc:temp proj_cooldown.msg.text set value [ \
    { \
        translate:"hc.not_translated", \
        fallback:"Projectile Cooldown: %s", \
        with:[ \
            {}, \
        ], \
    }, \
]
execute if entity @s[tag=hc.ProjectileCooldownDisabled] \
    run \
    data modify storage hc:temp proj_cooldown.msg.text[0].with[0] set value { \
        text:"disabled", \
        color:"red", \
    }
execute if entity @s[tag=!hc.ProjectileCooldownDisabled] \
    run \
    data modify storage hc:temp proj_cooldown.msg.text[0].with[0] set value { \
        text:"enabled", \
        color:"green", \
    }

function hc:msg/private/send with storage hc:temp proj_cooldown.msg

# reset and re-enable
scoreboard players reset @s proj_cooldown
scoreboard players enable @s proj_cooldown

# free memory
scoreboard objectives remove __hc.ProjCooldownSwitch
