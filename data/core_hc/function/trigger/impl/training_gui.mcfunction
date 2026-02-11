#>core_hc:trigger/impl/training_gui
#
# Trigger for showing the training menu dialog.
#
# @context player

## execution guard
# since the dialog can be "requested" through an item too, check if detection
# advancement is true and bypass by doing the trigger
execute if entity @s[advancements={core_hc:training/used_training_menu=true}] \
    run \
    trigger training_gui

execute unless predicate { \
    condition:"minecraft:any_of", \
    terms:[ \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                training_gui:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                training_gui:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s training_gui
scoreboard players enable @s training_gui

## commands
# since this can be triggered from an item too, revoke detection advancement
advancement revoke @s only core_hc:training/used_training_menu

# show dialog
dialog show @s { \
    type:"minecraft:multi_action", \
    title:"training menu", \
    actions:[ \
        { \
            label:"ls", \
            action:{ \
                type:"minecraft:run_command", \
                command:"trigger ls", \
            }, \
            tooltip:"trigger ls", \
            width:24, \
        }, \
    ], \
    after_action:"close", \
    can_close_with_escape:true, \
    exit_action:{ \
        label:{translate:"gui.done",fallback:"Done"}, \
    }, \
}
