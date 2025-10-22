#>core_hc:projectile/class/recon/flare_arrow/explode
#
# Makes the flare arrow explode and give effects.
#
# @context minecraft:spectral_arrow
# @input
#   radius: double @ 0..
#       Radius of the explosion.
#   entity_selector: #[entity] #[selector] string
#       Entities that are going to be detected by the explosion. (Re-used from
#       flare_arrow entity selector)

# fx
execute at @s \
    run \
    function core_hc:fx/projectile/class/recon/flare_arrow/explosion

# explosion effects
$execute at @s \
    as $(entity_selector) \
    if entity @s[distance=..$(radius)] \
    unless entity @s[type=minecraft:player,gamemode=spectator] \
    run \
    function hc:util/effect/give_ability_effects \
    with storage hc:main \
    consts.classes[{internal_name:"recon"}].\
    kits[{id:2}].recon_k2_data.flare_arrow.explosion.effects_info

# add detection
$execute at @s \
    as $(entity_selector) \
    if entity @s[distance=..$(radius)] \
    unless entity @s[type=minecraft:player,gamemode=spectator] \
    run \
    function hc:mechanic/detection/add

# kill arrow
function std:entity/kill_self_and_passengers
