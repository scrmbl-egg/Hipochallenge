#>hc:ability/tank/perk1/on_equip
#
# Function that is run when the tank's perk 1 is equipped.
#
# @context player

# set cooldown (when player is in a match pvp team)
execute if entity @s[ \
    gamemode=!creative, \
    predicate=hc:team/is_in_match_pvp_team \
] \
    store result score @s hc.TankPerk1NutritiousMealCooldown \
    run \
    return run \
    compute entity @s integer hc:class/tank/perk1/nutritious_meal_delay_ticks

# give directly if in creative (implicit) or in neutral/training team
execute if entity @s[gamemode=creative] \
    run \
    return run \
    function hc:ability/tank/perk1/give_nutritious_meal
execute if predicate hc:team/is_in_neutral_team \
    run \
    return run \
    function hc:ability/tank/perk1/give_nutritious_meal
