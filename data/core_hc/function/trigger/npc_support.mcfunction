#>core_hc:trigger/npc_support
#
# Trigger for spawning a dummy with the support class attributes.
#
# @context player

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
            "__hc.NewNpc", "hc.Npc", "hc.TrainingNpc", \
            "hc.TrainingNpcSupport", \
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
                {translate:"hc.class.support.name"}, \
                {translate:"hc.class.support.icon"}, \
            ], \
        }, \
    }

# set icon color to class list_info color
data modify entity @n[tag=__hc.NewNpc] description.with[1].color \
    set from storage hc:main consts.\
    classes[{internal_name:"support"}].list_info.class_color

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
    function hc:class/select/support
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

# reset and re-enable
scoreboard players reset @a npc_support
scoreboard players enable @a npc_support
