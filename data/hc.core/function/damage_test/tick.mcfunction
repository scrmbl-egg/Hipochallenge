# TODO: Docs

# proceed only if the player was just damaged
execute unless predicate hc:entity/was_just_damaged \
    run \
    return fail
# TODO: this predicate check can be moved BEFORE the function call

# tank perk 2 - slow on hit
function hc.core:damage_test/tank_perk2
