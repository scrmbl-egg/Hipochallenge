#>core_hc:class/get_internal_name
#
# Returns the internal name of the player's selected class.
#
# @context player
# @input
#   out_storage: #[id="storage"] string
#       Storage where the result will be stored.
#   out_nbt: #[nbt_path=minecraft:storage[[out_storage]]] string
#       Storage NBT path where the result will be stored.

# setup get_element parameters
$data modify storage hc:temp class_name.get_element_params set value { \
    array_storage:"minecraft:hipochallenge", \
    array_nbt:"consts.classes", \
    out_storage:"$(out_storage)", \
    out_nbt:"$(out_nbt)", \
    source_path:{id:0}, \
}

# insert class score value into array function source path parameter
execute store result storage \
    hc:temp class_name.get_element_params.source_path.id int 1 \
    run \
    scoreboard players get @s class

# get and output element/string
function std:array/get_element \
    with storage hc:temp class_name.get_elements_params

# free memory
data remove storage hc:temp class_name
