#>hc:ability/class/recon/kit2/on_flare_arrow_crossbow_shot
#
# Executes all commands when the player shoots the flare arrow crossbow.

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/recon/kit2/used_flare_arrow_crossbow

# set arrow cooldown ticks (except those in creative)
execute if entity @s[ \
    gamemode=!creative, \
    predicate=hc:trigger/is_projectile_cooldown_enabled \
] \
    store result score @s hc.ReconKit2FlareArrowCooldown \
    run \
    data get storage hc:main \
    consts.classes[{internal_name:"hc:recon"}].\
    kits[{id:2}].recon_k2_data.flare_arrow.cooldown_ticks

# give arrow instantly if proj_cooldown is triggered
execute if entity @s[ \
    gamemode=!creative, \
    predicate=hc:trigger/is_projectile_cooldown_disabled \
] \
    run \
    loot give @s loot hc:class/recon/item/kit2/flare_arrow
