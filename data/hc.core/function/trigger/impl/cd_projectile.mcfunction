#>hc.core:trigger/impl/cd_projectile
#
# Trigger for enabling or disabling projectile cooldown (training mode only).
#
# @context player

## execution guard
# prevent disabling if player types `/trigger ... set 0`
execute if score @s cd_projectile matches 0 \
    run \
    scoreboard players enable @s cd_projectile

# don't run anything if it's 0 or uninitialized
execute unless predicate { \
    condition:"minecraft:any_of", \
    terms:[ \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                cd_projectile:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                cd_projectile:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s cd_projectile
scoreboard players enable @s cd_projectile

## commands
# setup temp data
data modify storage hc:temp cd_projectile set value { \
    is_disabled:false, \
    msg_args:{ \
        text:{ \
            translate:"hc.trigger.cd_projectile.message", \
            fallback:"Projectile Cooldown: %s", \
            with:[{}], \
        }, \
    }, \
}

# store whether player already has cooldown disabled
execute store \
    result storage hc:temp cd_projectile.is_disabled \
    byte 1 \
    if entity @s[tag=hc.ProjectileCooldownDisabled]

# add or remove tag depending on result
execute if data storage hc:temp cd_projectile{is_disabled:false} \
    run \
    tag @s add hc.ProjectileCooldownDisabled
execute if data storage hc:temp cd_projectile{is_disabled:true} \
    run \
    tag @s remove hc.ProjectileCooldownDisabled

# store "enabled" or "disabled" string in message with appropriate color
execute if entity @s[tag=hc.ProjectileCooldownDisabled] \
    run \
    data modify storage hc:temp cd_projectile.msg_args.text.with[0] \
    set value { \
        translate:"hc.disabled", \
        fallback:"Disabled", \
        color:"red", \
    }
    # TODO: add translation
execute unless entity @s[tag=hc.ProjectileCooldownDisabled] \
    run \
    data modify storage hc:temp cd_projectile.msg_args.text.with[0] \
    set value { \
        translate:"hc.enabled", \
        fallback:"Enabled", \
        color:"green", \
    }
    # TODO: add translation

# send message
function hc:msg/private/send with storage hc:temp cd_projectile.msg_args

# free memory
data remove storage hc:temp cd_projectile
