#>core_hc:projectile/class/recon/flare_arrow/add_data
#
# Adds/saves all data necessary for both detecting the enemies and exploding
# and giving effects.

## setup temporary memory schema
data modify storage hc:temp new_flare_arrow set value { \
    owner_uuid:[I; 0, 0, 0, 0], \
    detected_team:"", \
    aabb_params: { \
        entity_selector:"", \
        on_detection_command:"data modify storage hc:temp flare_arrow.explode set value {}", \
        size:[0.0, 0.0, 0.0], \
    }, \
    explosion:{ \
        radius:0.0, \
        entity_selector:"", \
        effects_info: {}, \
    }, \
}

## get owner uuid
data modify storage hc:temp new_flare_arrow.owner_uuid set from entity @s Owner

## get owner's enemy team
execute on origin \
    run \
    function core_hc:team/get_enemy_team { \
        out_storage:"hc:temp", \
        out_nbt:"new_flare_arrow.detected_team" \
    }

## get entity selectors
# get parameters
data modify storage hc:temp new_flare_arrow.get_selector_params set value { \
    out_storage:"hc:temp", \
    out_nbt:"new_flare_arrow.aabb_params.entity_selector", \
}
data modify storage hc:temp new_flare_arrow.get_selector_params.owner_uuid \
    set from storage hc:temp new_flare_arrow.owner_uuid
data modify storage hc:temp new_flare_arrow.get_selector_params.detected_team \
    set from storage hc:temp new_flare_arrow.detected_team
data modify storage hc:temp new_flare_arrow.get_selector_params.player_limit \
    set from storage minecraft:hipochallenge consts.game.team_size

# call func
#>_
# @in
#   hc:temp new_flare_arrow
#       get_selector_params
#           owner_uuid
#           detected_team
#           player_limit
#           out_storage
#           out_nbt
function core_hc:projectile/class/recon/flare_arrow/get_selector_string \
    with storage hc:temp new_flare_arrow.get_selector_params
#>_
# @out
#   hc:temp new_flare_arrow
#       aabb_params
#           ...
#           entity_selector

# free function temp storage
data remove storage hc:temp new_flare_arrow.get_selector_params

## get aabb's size
data modify storage hc:temp new_flare_arrow.aabb_params.size \
    set from storage \
    minecraft:hipochallenge \
    consts.classes[{internal_name:"recon"}].\
    kits[{id:2}].recon_k2_data.flare_arrow.detection_aabb_size

## get explosion data
# radius
data modify storage hc:temp new_flare_arrow.explosion.radius \
    set from storage \
    minecraft:hipochallenge \
    consts.classes[{internal_name:"recon"}].\
    kits[{id:2}].recon_k2_data.flare_arrow.explosion.radius

# effects
data modify storage hc:temp new_flare_arrow.explosion.effects_info \
    set from storage \
    minecraft:hipochallenge \
    consts.classes[{internal_name:"recon"}].\
    kits[{id:2}].recon_k2_data.flare_arrow.explosion.effects_info

# entity selector (copy from aabb data)
data modify storage hc:temp new_flare_arrow.explosion.entity_selector \
    set from storage hc:temp new_flare_arrow.aabb_params.entity_selector

## end ops
# copy all data in entity's `data` field
data modify entity @s data.flare_arrow set from storage hc:temp new_flare_arrow

# free leftover storage data/memory
data remove storage hc:temp new_flare_arrow
