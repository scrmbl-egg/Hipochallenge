#>hc.core:trigger/impl/npc_tank
#
# Trigger for spawning a dummy with the tank class attributes.
#
# @context player

## execution guard
# prevent disabling if player types `/trigger ... set 0`
execute if score @s npc_tank matches 0 \
    run \
    scoreboard players enable @s npc_tank

# don't run anything if it's 0 or uninitialized
execute unless predicate { \
    type:"minecraft:any_of", \
    terms:[ \
        { \
            type:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                npc_tank:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            type:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                npc_tank:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s npc_tank
scoreboard players enable @s npc_tank

## commands
# summon
execute at @s \
    run \
    summon minecraft:mannequin ~ ~ ~ { \
        CustomName:{ \
            translate:"entity.minecraft.mannequin.label", \
            fallback:"NPC", \
        }, \
        CustomNameVisible:true, \
        Tags:[ \
            "__hc.NewNpc", "hc.Npc", "hc.TrainingNpc", "hc.TrainingNpcTank", \
        ], \
        data:{ \
            "hc:entity/training_npc":{ \
                owner_uuid:[I; 0, 0, 0, 0], \
            }, \
        }, \
        profile:{ \
            properties:[ \
                { \
                    name:"textures", \
                    value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjM5MmNkM2U0ZTZhYmZjN2ZmNTE0NWFiYWNjNmZhNGY1ODZhNjAyYjNjYmM3NWM0ZDQ1MGI5ZDhiZjEzOTg3NCJ9fX0=", \
                }, \
            ], \
            model:"slim", \
        }, \
        Team:"hc.Neutral", \
        description:{ \
            translate:"hc.class.name_with_icon", \
            fallback:"%2$s %1$s", \
            with:[ \
                {translate:"hc.class.tank.name",fallback:"Tank"}, \
                {translate:"hc.class.tank.icon",fallback:"\u26e8"}, \
            ], \
        }, \
    }

# set icon style to class list_info style
data modify entity @n[tag=__hc.NewNpc] description.with[1] \
    merge from storage hc:main consts.\
    classes[{key:"hc:tank"}].list_info.class_text_style

# set owner_uuid
data modify entity @n[tag=__hc.NewNpc] \
    data."hc:entity/training_npc".owner_uuid \
    set from entity @s UUID

# rotate
data modify entity @n[tag=__hc.NewNpc] Rotation[0] \
    set from entity @s Rotation[0]

# equip armor and properties
execute as @n[tag=__hc.NewNpc] \
    run \
    function hc:class/select/tank
execute as @n[tag=__hc.NewNpc] \
    run \
    function hc:kit/select/1
execute as @n[tag=__hc.NewNpc] \
    run \
    function hc:perk/select/1

execute as @n[tag=__hc.NewNpc] \
    run \
    function hc:equipment/equip_all

# remove temp tag
execute as @n[tag=__hc.NewNpc] \
    run \
    tag @s remove __hc.NewNpc
