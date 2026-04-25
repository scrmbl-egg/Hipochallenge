#>core_hc:trigger/print_available/append_trigger
#
# Appends a single text component to the array of arguments of the tellraw
# that will print all available triggers.
#
# @input
#   array_storage: #[id="storage"] string
#       Storage where the array or list is located.
#   array_nbt: #[nbt_path=minecraft:storage[[array_storage]]] string
#       Storage NBT path where the array or list is located.
#   trigger: #[objective] string
#       Trigger score objective that will be displayed.
#   category: ::java::util::text::TranslatedText
#       Translated text that indicates the category or type of the trigger.
#   color: ::java::util::text::TextStyle[color]
#       Text color of the entry and category.
#   description_fallback: #[translation_value] string
#       Translation fallback for the description of the trigger.
#   description_with: [::java::util::text::Text]
#       List of arguments for the description translation. Leave empty if no
#       arguments are present.

# compose entry
$data modify storage hc:temp trigger_list_entry set value { \
    translate:"hc.trigger.list.entry", \
    fallback:"[%s]", \
    color:"$(color)", \
    with:[{text:"$(trigger)"}], \
    hover_event:{ \
        action:"show_text", \
        value:[ \
            { \
                translate:"hc.trigger.list.entry_tooltip", \
                fallback:"%1$s | %2$s\n\n%3$s\n\n%4$s", \
                with:[ \
                    { \
                        translate:"", \
                        fallback:"/trigger %s", \
                        color:"gray", \
                        with:[{text:"$(trigger)",color:"aqua"}], \
                    }, \
                    $(category), \
                    { \
                        translate:"hc.trigger.$(trigger).description", \
                        fallback:"$(description_fallback)", \
                        with:$(description_with), \
                    }, \
                    { \
                        translate:"hc.key_hint", \
                        fallback:"[%1$s]: %2$s", \
                        color:"gold", \
                        bold:true, \
                        with:[ \
                            { \
                                translate:"key.mouse.left", \
                                fallback:"Left Button", \
                            }, \
                            { \
                                translate:"multiplayer.confirm_command.suggest_command", \
                                fallback:"Copy to Chat Screen", \
                                color:"white", \
                                bold:false, \
                            }, \
                        ], \
                    }, \
                ], \
            }, \
        ], \
    }, \
    click_event:{ \
        action:"suggest_command", \
        command:"/trigger $(trigger)", \
    }, \
}
# append category style with color and bold characters
$data modify storage hc:temp trigger_list_entry.hover_event.value[0].with[1] \
    merge value {bold:true,color:"$(color)"}

# append entry to specified array
$data modify storage $(array_storage) $(array_nbt) \
    append from storage hc:temp trigger_list_entry
# add a space as separator
$data modify storage $(array_storage) $(array_nbt) append value " "

# free memory
data remove storage hc:temp trigger_list_entry
