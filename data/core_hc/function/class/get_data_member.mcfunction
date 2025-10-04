#>core_hc:class/get_data_member
#
# Gets a data member from the class constants. This helper function allows for
# getting class constants when the player's class is unknown.
#
# @input
#   class_id: int @ 1..
#       ID of the class whose data member is going to be accessed. Can be
#       obtained through the player's 'hc.Class' score.
#   member_name: string
#       Name of the data member that is going to be obtained.
#   out_storage: #[id="storage"] string
#       Storage where the result will be stored.
#   out_nbt: #[nbt_path=minecraft:storage[[out_storage]]] string
#       Storage NBT path where the result will be stored.

$data modify storage $(out_storage) $(out_nbt) \
    set from storage \
    hc:main consts.classes[{id:$(class_id)}].$(member_name)
