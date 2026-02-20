#>core_hc:ability/tank/perk2/on_damaged_by_tank_perk2
#
# Function that is ran when a player is hit by a tank perk 2 player.
#
# @context player

advancement revoke @s \
    only core_hc:class/tank/perk2/damaged_by_tank_perk2

# give effects
function hc:util/effect/give_ability_effects \
    with storage hc:main consts.\
    classes[{internal_name:"hc:tank"}].\
    perks[{id:2}].tank_p2_data.attack.effects_info
