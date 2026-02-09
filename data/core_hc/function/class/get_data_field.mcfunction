#>core_hc:class/get_data_field
#
# Gets a data member from the class constants. This helper function allows for
# getting class constants when the player's class is unknown.
#
# @context player
# @input
#   field: string
#       Name of the data member that is going to be obtained.
#   out_storage: #[id="storage"] string
#       Storage where the result will be stored.
#   out_nbt: #[nbt_path=minecraft:storage[[out_storage]]] string
#       Storage NBT path where the result will be stored.

# setup get_element_unsafe args
data modify storage hc:temp get_class_member set value { \
    func_args:{ \
        array_storage:"hc:main", \
        array_nbt:"consts.classes", \
        out_storage:"hc:temp", \
        out_nbt:"get_class_member.class_data", \
        source_path:{id:0}, \
    }, \
    class_data:{}, \
}

# get class id
execute store result storage hc:temp get_class_member.func_args.source_path.id \
    int 1 \
    run \
    scoreboard players get @s hc.Class

# function call (use unsafe version)
function core_std:array/get_element_unsafe \
    with storage hc:temp get_class_member.func_args
#>_
# @out
#   hc:temp
#       get_class_member.class_data

# get output
$data modify storage $(out_storage) $(out_nbt) \
    set from storage hc:temp get_class_member.class_data.$(field)

# free memory
data remove storage hc:temp get_class_member