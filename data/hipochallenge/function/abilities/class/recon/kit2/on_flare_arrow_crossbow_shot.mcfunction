#>hipochallenge:abilities/class/recon/kit2/on_flare_arrow_crossbow_shot
#
# Executes all commands when the player shoots the flare arrow crossbow.

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/recon/kit2/used_flare_arrow_crossbow

# set arrow cooldown ticks (except those in creative)
execute if entity @s[gamemode=!creative] \
    store result score @s hc.ReconKit2FlareArrowCooldown \
    run \
    data get storage minecraft:hipochallenge \
    consts.classes[{internal_name:"recon"}].\
    kits[{id:2}].recon_k2_data.flare_arrow.cooldown_ticks
