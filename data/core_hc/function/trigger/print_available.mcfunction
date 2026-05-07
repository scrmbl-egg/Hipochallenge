#>core_hc:trigger/print_available
#
# Prints all available triggers to the calling player. Meant to be called
# internally in the`list` trigger implementation.
#
# @context player

## NOTE:
# Reminder that the `score matches 0` syntax is the way to check if a trigger
# is enabled. So yes, we'll go

# set up tellraw translation args
data modify storage hc:temp trigger_list_msg_args set value { \
    text:{ \
        translate:"hc.trigger.list.message", \
        fallback:"Available triggers/commands:\n\n%s\n\n\n", \
        with:[[""]], \
    }, \
}

## OH BOY... HERE IT COMES!!

## ESSENTIALS
# list
execute if score @s list matches 0 \
    run \
    function core_hc:trigger/print_available/append_trigger { \
        array_storage:"hc:temp", \
        array_nbt:"trigger_list_msg_args.text.with[0]", \
        trigger:"list", \
        category:{ \
            translate:"hc.trigger_category.essentials", \
            fallback:"Essentials", \
        }, \
        color:"aqua", \
        description_fallback:"Prints all currently available triggers/commands", \
        description_with:[], \
    }
# info
execute if score @s info matches 0 \
    run \
    function core_hc:trigger/print_available/append_trigger { \
        array_storage:"hc:temp", \
        array_nbt:"trigger_list_msg_args.text.with[0]", \
        trigger:"info", \
        category:{ \
            translate:"hc.trigger_category.essentials", \
            fallback:"Essentials", \
        }, \
        color:"aqua", \
        description_fallback:"Shows dialog with basic information to learn and start playing the game", \
        description_with:[], \
    }

## MATCH REQUESTS
# request
execute if score @s request matches 0 \
    run \
    function core_hc:trigger/print_available/append_trigger { \
        array_storage:"hc:temp", \
        array_nbt:"trigger_list_msg_args.text.with[0]", \
        trigger:"request", \
        category:{ \
            translate:"hc.trigger_category.match_requests", \
            fallback:"Match Requests", \
        }, \
        color:"gold", \
        description_fallback:"Requests a match for the currently selected game mode", \
        description_with:[], \
    }
# cancel
execute if score @s cancel matches 0 \
    run \
    function core_hc:trigger/print_available/append_trigger { \
        array_storage:"hc:temp", \
        array_nbt:"trigger_list_msg_args.text.with[0]", \
        trigger:"cancel", \
        category:{ \
            translate:"hc.trigger_category.match_requests", \
            fallback:"Match Requests", \
        }, \
        color:"gold", \
        description_fallback:"Cancels the current match request", \
        description_with:[], \
    }
# join
execute if score @s join matches 0 \
    run \
    function core_hc:trigger/print_available/append_trigger { \
        array_storage:"hc:temp", \
        array_nbt:"trigger_list_msg_args.text.with[0]", \
        trigger:"join", \
        category:{ \
            translate:"hc.trigger_category.match_requests", \
            fallback:"Match Requests", \
        }, \
        color:"gold", \
        description_fallback:"Makes the user join the requested match", \
        description_with:[], \
    }
# leave
execute if score @s leave matches 0 \
    run \
    function core_hc:trigger/print_available/append_trigger { \
        array_storage:"hc:temp", \
        array_nbt:"trigger_list_msg_args.text.with[0]", \
        trigger:"leave", \
        category:{ \
            translate:"hc.trigger_category.match_requests", \
            fallback:"Match Requests", \
        }, \
        color:"gold", \
        description_fallback:"Makes the user leave the requested match", \
        description_with:[], \
    }
# start
execute if score @s start matches 0 \
    run \
    function core_hc:trigger/print_available/append_trigger { \
        array_storage:"hc:temp", \
        array_nbt:"trigger_list_msg_args.text.with[0]", \
        trigger:"start", \
        category:{ \
            translate:"hc.trigger_category.match_requests", \
            fallback:"Match Requests", \
        }, \
        color:"gold", \
        description_fallback:"Starts the requested match", \
        description_with:[], \
    }

## TRAINING MODE
# menu
execute if score @s menu matches 0 \
    run \
    function core_hc:trigger/print_available/append_trigger { \
        array_storage:"hc:temp", \
        array_nbt:"trigger_list_msg_args.text.with[0]", \
        trigger:"menu", \
        category:{ \
            translate:"hc.trigger_category.training_mode", \
            fallback:"Training Mode", \
        }, \
        color:"#98bdc2", \
        description_fallback:"Shows a dialog with buttons for training mode triggers/commands", \
        description_with:[], \
    }
# cd_item
execute if score @s cd_item matches 0 \
    run \
    function core_hc:trigger/print_available/append_trigger { \
        array_storage:"hc:temp", \
        array_nbt:"trigger_list_msg_args.text.with[0]", \
        trigger:"cd_item", \
        category:{ \
            translate:"hc.trigger_category.training_mode", \
            fallback:"Training Mode", \
        }, \
        color:"#98bdc2", \
        description_fallback:"Significantly reduces the cooldown of items", \
        description_with:[], \
    }
# cd_projectile
execute if score @s cd_projectile matches 0 \
    run \
    function core_hc:trigger/print_available/append_trigger { \
        array_storage:"hc:temp", \
        array_nbt:"trigger_list_msg_args.text.with[0]", \
        trigger:"cd_projectile", \
        category:{ \
            translate:"hc.trigger_category.training_mode", \
            fallback:"Training Mode", \
        }, \
        color:"#98bdc2", \
        description_fallback:"Significantly reduces the cooldown of projectiles", \
        description_with:[], \
    }
# npc_tank
execute if score @s npc_tank matches 0 \
    run \
    function core_hc:trigger/print_available/append_trigger { \
        array_storage:"hc:temp", \
        array_nbt:"trigger_list_msg_args.text.with[0]", \
        trigger:"npc_tank", \
        category:{ \
            translate:"hc.trigger_category.training_mode", \
            fallback:"Training Mode", \
        }, \
        color:"#98bdc2", \
        description_fallback:"Summons an NPC of the %s class", \
        description_with:[ \
            {translate:"hc.class.tank.name",fallback:"Tank"}, \
        ], \
    }
# npc_marksman
execute if score @s npc_marksman matches 0 \
    run \
    function core_hc:trigger/print_available/append_trigger { \
        array_storage:"hc:temp", \
        array_nbt:"trigger_list_msg_args.text.with[0]", \
        trigger:"npc_marksman", \
        category:{ \
            translate:"hc.trigger_category.training_mode", \
            fallback:"Training Mode", \
        }, \
        color:"#98bdc2", \
        description_fallback:"Summons an NPC of the %s class", \
        description_with:[ \
            {translate:"hc.class.marksman.name",fallback:"Marksman"}, \
        ], \
    }
# npc_assassin
execute if score @s npc_assassin matches 0 \
    run \
    function core_hc:trigger/print_available/append_trigger { \
        array_storage:"hc:temp", \
        array_nbt:"trigger_list_msg_args.text.with[0]", \
        trigger:"npc_assassin", \
        category:{ \
            translate:"hc.trigger_category.training_mode", \
            fallback:"Training Mode", \
        }, \
        color:"#98bdc2", \
        description_fallback:"Summons an NPC of the %s class", \
        description_with:[ \
            {translate:"hc.class.assassin.name",fallback:"Assassin"}, \
        ], \
    }
# npc_support
execute if score @s npc_support matches 0 \
    run \
    function core_hc:trigger/print_available/append_trigger { \
        array_storage:"hc:temp", \
        array_nbt:"trigger_list_msg_args.text.with[0]", \
        trigger:"npc_support", \
        category:{ \
            translate:"hc.trigger_category.training_mode", \
            fallback:"Training Mode", \
        }, \
        color:"#98bdc2", \
        description_fallback:"Summons an NPC of the %s class", \
        description_with:[ \
            {translate:"hc.class.support.name",fallback:"Support"}, \
        ], \
    }
# npc_recon
execute if score @s npc_recon matches 0 \
    run \
    function core_hc:trigger/print_available/append_trigger { \
        array_storage:"hc:temp", \
        array_nbt:"trigger_list_msg_args.text.with[0]", \
        trigger:"npc_recon", \
        category:{ \
            translate:"hc.trigger_category.training_mode", \
            fallback:"Training Mode", \
        }, \
        color:"#98bdc2", \
        description_fallback:"Summons an NPC of the %s class", \
        description_with:[ \
            {translate:"hc.class.recon.name",fallback:"Recon"}, \
        ], \
    }
# npc_assault
execute if score @s npc_assault matches 0 \
    run \
    function core_hc:trigger/print_available/append_trigger { \
        array_storage:"hc:temp", \
        array_nbt:"trigger_list_msg_args.text.with[0]", \
        trigger:"npc_assault", \
        category:{ \
            translate:"hc.trigger_category.training_mode", \
            fallback:"Training Mode", \
        }, \
        color:"#98bdc2", \
        description_fallback:"Summons an NPC of the %s class", \
        description_with:[ \
            {translate:"hc.class.assault.name",fallback:"Assault"}, \
        ], \
    }

## print the monolithic text component we've composed
function hc:msg/private/send \
    with storage hc:temp trigger_list_msg_args

# free memory
data remove storage hc:temp trigger_list_msg_args
