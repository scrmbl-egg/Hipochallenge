#>core_hc:trigger/impl/proj_cooldown
#
# Trigger for enabling or disabling projectile cooldown (training mode only).
#
# @context player

## execution guard
execute unless predicate { \
    condition:"minecraft:any_of", \
    terms:[ \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                proj_cooldown:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                proj_cooldown:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s proj_cooldown
scoreboard players enable @s proj_cooldown

## commands
# setup temp data
data modify storage hc:temp proj_cooldown set value { \
    is_disabled:false, \
    msg_args:{ \
        text:{ \
            translate:"hc.not_translated", \
            fallback:"Projectile Cooldown: %s", \
            with:[{}], \
        }, \
    }, \
}

# store whether player already has cooldown disabled
execute store \
    result storage hc:temp proj_cooldown.is_disabled \
    byte 1 \
    if entity @s[tag=hc.ProjectileCooldownDisabled]

# add or remove tag depending on result
execute if data storage hc:temp proj_cooldown{is_disabled:false} \
    run \
    tag @s add hc.ProjectileCooldownDisabled
execute if data storage hc:temp proj_cooldown{is_disabled:true} \
    run \
    tag @s remove hc.ProjectileCooldownDisabled

# store "enabled" or "disabled" string in message with appropriate color
execute if entity @s[tag=hc.ProjectileCooldownDisabled] \
    run \
    data modify storage hc:temp proj_cooldown.msg_args.text.with[0] \
    set value { \
        translate:"hc.not_translated", \
        fallback:"Disabled", \
        color:"red", \
    }
    # TODO: add translation
execute unless entity @s[tag=hc.ProjectileCooldownDisabled] \
    run \
    data modify storage hc:temp proj_cooldown.msg_args.text.with[0] \
    set value { \
        ranslate:"hc.not_translated", \
        fallback:"Enabled", \
        color:"green", \
    }
    # TODO: add translation

# send message
function hc:msg/private/send with storage hc:temp proj_cooldown.msg_args

# free memory
data remove storage hc:temp proj_cooldown
