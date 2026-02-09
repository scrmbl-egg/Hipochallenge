#>core_hc:kit/get_data_field
#
# Gets a data member from the class kit constants. This helper function allows
# for getting kit constants when the player's class and kit are unknown.
#
# @input
#   field: #[match_regex=] string
#       Name of the data member that is going to be obtained.
#   out_storage: #[id="storage"] string
#       Storage where the result will be stored.
#   out_nbt: #[nbt_path=minecraft:storage[[out_storage]]] string
#       Storage NBT path where the result will be stored.

data modify storage hc:temp get_kit_field set value { \
    func_args:{ \
        array_storage:"hc:temp", \
        array_nbt:"get_kit_field.kit_array", \
        out_storage:"hc:temp", \
        out_nbt:"get_kit_field.kit_data", \
        source_path:{id:0}, \
    }, \
    kit_array:[], \
    kit_data:{}, \
}

# to get kit data, the class kit array must be obtained
function core_hc:class/get_data_field { \
    field:"kits", \
    out_storage:"hc:temp", \
    out_nbt:"get_kit_field.kit_array", \
}
#>_
# @out
#   hc:temp
#       get_kit_field.kit_array

# get kit id
execute store result storage hc:temp get_kit_field.func_args.source_path.id \
    int 1 \
    run \
    scoreboard players get @s hc.Kit

# get kit data
function core_std:array/get_element_unsafe \
    with storage hc:temp get_kit_field.func_args

## get kit member
$data modify storage $(out_storage) $(out_nbt) \
    set from storage hc:temp get_kit_field.kit_data.$(field)

# free memory
data remove storage hc:temp get_kit_field
