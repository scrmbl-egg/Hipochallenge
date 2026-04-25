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

## print the monolithic text component we've composed
function hc:msg/private/send \
    with storage hc:temp trigger_list_msg_args

# free memory
data remove storage hc:temp trigger_list_msg_args
