#>hc:util/profile/get_full
#
# Gets the full profile of the player that is executing the command. This is
# done by storing the player head in an ender chest slot, which isn't going
# to be used in the minigame.
#
# @context player
# @input
#   out_storage: #[id="storage"] string
#       Storage where the result will be stored.
#   out_nbt: #[nbt_path=minecraft:storage[[out_storage]]] string
#       Storage NBT path where the result will be stored.

# get player head
loot replace entity @s enderchest.26 loot hc.core:util/player_head

# get data
$data modify storage $(out_storage) $(out_nbt) \
    set from entity @s EnderItems[{Slot:26b}].components."minecraft:profile"

# replace with air
item replace entity @s enderchest.26 with minecraft:air
