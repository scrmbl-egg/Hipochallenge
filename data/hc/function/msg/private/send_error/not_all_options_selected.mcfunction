#>hc:msg/private/send_error/not_all_options_selected
#
# Sends an error to the player message telling them all options aren't selected.
#
# @context player

function hc:msg/private/send_error { \
    text:{ \
        translate:"hc.msg.private.error.not_all_options_selected", \
        fallback:"You don't have all options selected (class, kit, or perk)", \
    } \
}
