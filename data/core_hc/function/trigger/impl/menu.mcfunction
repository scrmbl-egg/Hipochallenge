#>core_hc:trigger/impl/menu
#
# Trigger for showing the training menu dialog.
#
# @context player

## execution guard
# since the dialog can be "requested" through an item too, check if detection
# advancement is true and bypass by doing the trigger
execute if entity @s[advancements={core_hc:training/used_training_menu=true}] \
    run \
    trigger menu

# prevent disabling if player types `/trigger ... set 0`
execute if score @s menu matches 0 \
    run \
    scoreboard players enable @s menu

# don't run anything if it's 0 or uninitialised
execute unless predicate { \
    condition:"minecraft:any_of", \
    terms:[ \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                menu:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                menu:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s menu
scoreboard players enable @s menu

## commands
# since this can be triggered from an item too, revoke detection advancement
advancement revoke @s only core_hc:training/used_training_menu

# show dialog (yeah, two notes, that's how important this dialog is)

## NOTE:
# This dialog produces an error in Spyglass, BUT NOT IN-GAME!!!!:
#
# https://github.com/SpyglassMC/Spyglass/issues/1991
#
# This doesn't apply to JSON dialogs, however, Minecraft requires restarting the
# server for them to be properly updated, unlike inlined dialogs. So yeah, this
# error will probably stay for a bit.

## NOTE:
# No offense to Mojang, but they made a huge fucking mess here.
#
# It would be preferable to allow the player to press multiple actions *without*
# closing the dialog, and then allowing the player to decide when they want to
# exit with the `exit_action`; however, this doesn't work.
#
# Setting `after_action` to `none` ALSO affects the `exit_action`, which is
# infuriating because it makes the ESC key the only option for players to
# actually exit the dialog. This only leaves TWO options:
#
# - Leave a tip that says "use ESC key to exit menu". UX nightmare.
#
# - Make a SECOND dialog where it says: "Are you sure you want to exit?" with
# a yes or no option. Making the "yes" option display the menu dialog AGAIN and
# the "no" option actually closing the dialog. Adds friction in UX terms, but
# it's better than the first option.

dialog show @s core_hc:training/menu

dialog show @s { \
    "type": "minecraft:multi_action", \
    "title": { \
        "translate": "hc.trigger.menu.dialog.title", \
        "fallback": "Training Menu" \
    }, \
    "actions": [ \
        { \
            "label": { \
                "translate": "hc.trigger.list.button_label", \
                "fallback": "List Triggers" \
            }, \
            "action":{ \
                "type":"minecraft:run_command", \
                "command":"trigger list" \
            }, \
            "width": 280, \
            "tooltip": [ \
                { \
                    "translate": "hc.trigger.button_tooltip", \
                    "fallback": "%1$s\n\nCommand: %2$s", \
                    "with": [ \
                        { \
                            "translate": "hc.trigger.list.description", \
                            "fallback": "Prints all currently available triggers/commands in the chat", \
                            "color": "gray" \
                        }, \
                        { \
                            "translate": "", \
                            "fallback": "/trigger %s", \
                            "color": "gray", \
                            "with": [ \
                                { \
                                    "text": "list", \
                                    "color": "aqua" \
                                } \
                            ] \
                        } \
                    ] \
                } \
            ] \
        } \
    ], \
    "after_action": "close", \
    "pause": false, \
    "can_close_with_escape":true, \
    "exit_action": { \
        "label": { \
            "translate":"gui.back", \
            "fallback":"Back" \
        } \
    } \
}
