#>core_hc:perk/get_data_member
#
# Gets a data member from the class perk constants. This helper function allows
# for getting class constants when the player's class and perk are unknown.
#
# @input
#   class_id: int @ 1..
#       ID of the class whose perk structure is going to be accessed. Can be
#       obtained through the player's 'class' score.
#   perk_id: int @ 1..
#       ID of the perk whose data member is going to be accessed. Can be
#       obtained through the player's 'perk' score.
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
    perks[{id:$(kit_id)}].$(member_name)
