#>hc:ability/recon/kit2/on_flare_arrow_crossbow_shot
#
# Executes all commands when the player shoots the flare arrow crossbow.

# revoke detection advancement
advancement revoke @s \
    only hc.core:class/recon/kit2/used_flare_arrow_crossbow

# set arrow cooldown ticks (except those in creative)
execute if entity @s[ \
    gamemode=!creative, \
    predicate=hc:trigger/is_projectile_cooldown_enabled \
] \
    store result score @s hc.ReconKit2FlareArrowCooldown \
    run \
    compute entity @s integer hc:class/recon/kit2/flare_arrow/cooldown_ticks

# give arrow instantly if proj_cooldown is triggered
execute if entity @s[ \
    gamemode=!creative, \
    predicate=hc:trigger/is_projectile_cooldown_disabled \
] \
    run \
    loot give @s loot hc:class/recon/item/kit2/flare_arrow
