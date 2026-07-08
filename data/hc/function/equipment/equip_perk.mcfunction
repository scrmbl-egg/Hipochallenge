#>hc:equipment/equip_perk
#
# Equips the currently selected perk. This function does nothing if there is no
# `on_equip_function` in the definition of the perk that is selected.

# all options selected guard clause
execute unless predicate hc:util/has_all_options_selected \
    run \
    function hc:msg/private/send_error/not_all_options_selected

# setup local data
data modify storage hc:temp equip_perk set value { \
    call_args:{ \
        function:"", \
        args:{}, \
    }, \
}

# try to get on equip function
function hc:perk/get_data_field { \
    field:"on_equip_function", \
    out_storage:"hc:temp", \
    out_nbt:"equip_perk.call_args.function", \
}

# if the function existed, call it
execute unless data storage hc:temp equip_perk.call_args{function:""} \
    run \
    function std:function/call \
    with storage hc:temp equip_perk.call_args

# free memory
data remove storage hc:temp equip_perk
