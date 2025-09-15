#>core_hc:kit/get_data_member
#
# Gets a data member from the class kit constants. This helper function allows
# for getting class constants when the player's class and kit are unknown.
#
# @input
#   class_id: int @ 1..
#       ID of the class whose kit structure is going to be accessed. Can be
#       obtained through the player's 'hc.Class' score.
#   kit_id: int @ 1..
#       ID of the kit whose data member is going to be accessed. Can be
#       obtained through the player's 'hc.Kit' score.
#   member_name: string
#       Name of the data member that is going to be obtained.
#   out_storage: #[id="storage"] string
#       Storage where the result will be stored.
#   out_nbt: #[nbt_path=minecraft:storage[[out_storage]]] string
#       Storage NBT path where the result will be stored.

$data modify storage $(out_storage) $(out_nbt) \
    set from storage \
    minecraft:hipochallenge \
    consts.\
    classes[{id:$(class_id)}].\
    kits[{id:$(kit_id)}].$(member_name)
