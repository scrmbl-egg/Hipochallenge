#>core_hc:projectile/class/recon/flare_arrow/add_data
#
# Adds/saves all data necessary for both detecting the enemies and exploding
# and giving effects.
#
# @context minecraft:spectral_arrow

## setup temporary memory schema
data modify entity @s data."hc:entity/flare_arrow" set value { \
    owner_uuid:[I; 0, 0, 0, 0], \
    detected_team:"", \
    aabb_args: { \
        entity_selector:"", \
        on_detection_command:"data modify storage hc:temp flare_arrow.explode set value {}", \
        size:[0.0, 0.0, 0.0], \
    }, \
    explosion:{ \
        radius:0.0, \
        entity_selector:"", \
    }, \
}

## merge hardcoded flare arrow data
data merge entity @s { \
    crit:false, \
    damage:0.0, \
}

## get owner uuid
data modify entity @s data."hc:entity/flare_arrow".owner_uuid \
    set from entity @s Owner

## get owner's enemy team
execute on origin \
    run \
    function hc:team/get_enemy_team { \
        out_storage:"hc:temp", \
        out_nbt:"new_flare_arrow.detected_team" \
    }
data modify entity @s data."hc:entity/flare_arrow".detected_team \
    set from storage hc:temp new_flare_arrow.detected_team

## get entity selectors
# get parameters
data modify storage hc:temp new_flare_arrow.get_selector_params set value { \
    owner_uuid:[I; 0, 0, 0, 0], \
    detected_team:"", \
    out_storage:"hc:temp", \
    out_nbt:"new_flare_arrow.entity_selector", \
}
data modify storage hc:temp new_flare_arrow.get_selector_params.owner_uuid \
    set from entity @s data."hc:entity/flare_arrow".owner_uuid
data modify storage hc:temp new_flare_arrow.get_selector_params.detected_team \
    set from entity @s data."hc:entity/flare_arrow".detected_team

# call func
#>_
# @in
#   hc:temp new_flare_arrow
#       get_selector_params
#           owner_uuid
#           detected_team
#           out_storage
#           out_nbt
function core_hc:projectile/class/recon/flare_arrow/get_selector_string \
    with storage hc:temp new_flare_arrow.get_selector_params
#>_
# @out
#   hc:temp new_flare_arrow
#       entity_selector

data modify entity @s data."hc:entity/flare_arrow".aabb_args.entity_selector \
    set from storage hc:temp new_flare_arrow.entity_selector

## get aabb's size
data modify entity @s data."hc:entity/flare_arrow".aabb_args.size \
    set from storage \
    hc:main \
    consts.classes[{internal_name:"hc:recon"}].\
    kits[{id:2}].recon_k2_data.flare_arrow.detection_aabb_size

## get explosion data
# radius
data modify entity @s data."hc:entity/flare_arrow".explosion.radius \
    set from storage \
    hc:main \
    consts.classes[{internal_name:"hc:recon"}].\
    kits[{id:2}].recon_k2_data.flare_arrow.explosion.radius

# entity selector (copy from aabb data)
data modify entity @s data."hc:entity/flare_arrow".explosion.entity_selector \
    set from entity @s data."hc:entity/flare_arrow".aabb_args.entity_selector

# free storage memory
data remove storage hc:temp new_flare_arrow
