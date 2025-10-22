#>core_hc:projectile/class/recon/flare_arrow/get_selector_string
#
# Gets the entity selector string that will be used to cast AABBs and apply
# effects.
#
# @input
#   owner_uuid: #[uuid] int[] @ 4
#       UUID of the owner of the flare arrow.
#   detected_team: #[team] string
#       Name of the team that is going to be detected by the flare arrow.
#   out_storage: #[id="storage"] string
#       Storage where the result will be stored.
#   out_nbt: #[nbt_path=minecraft:storage[[out_storage]]] string
#       Storage NBT path where the result will be stored.

$data modify storage $(out_storage) $(out_nbt) \
    set value \
    "@e[type=#hc:player_like,team=$(detected_team),nbt=!{UUID:$(owner_uuid)},limit=10,sort=nearest]"
