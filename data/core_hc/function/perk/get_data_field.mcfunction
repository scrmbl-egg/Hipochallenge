#>core_hc:perk/get_data_field
#
# Gets a data member from the class perk constants. This helper function allows
# for getting class constants when the player's class and perk are unknown.
#
# @input
#   field: string
#       Name of the data member that is going to be obtained.
#   out_storage: #[id="storage"] string
#       Storage where the result will be stored.
#   out_nbt: #[nbt_path=minecraft:storage[[out_storage]]] string
#       Storage NBT path where the result will be stored.

data modify storage hc:temp get_perk_field set value { \
    func_args:{ \
        array_storage:"hc:temp", \
        array_nbt:"get_perk_field.perk_array", \
        out_storage:"hc:temp", \
        out_nbt:"get_perk_field.perk_data", \
        source_path:{id:0}, \
    }, \
    perk_array:[], \
    perk_data:{}, \
}

# to get perk data, the class perk array must be obtained
function core_hc:class/get_data_field { \
    field:"perks", \
    out_storage:"hc:temp", \
    out_nbt:"get_perk_field.perk_array", \
}
#>_
# @out
#   hc:temp
#       get_perk_field.perk_array

# get perk id
execute store result storage hc:temp get_perk_field.func_args.source_path.id \
    int 1 \
    run \
    scoreboard players get @s hc.Perk

# get perk data
function core_std:array/get_element_unsafe \
    with storage hc:temp get_perk_field.func_args

## get perk member
$data modify storage $(out_storage) $(out_nbt) \
    set from storage hc:temp get_perk_field.perk_data.$(field)

# free memory
data remove storage hc:temp get_perk_field
