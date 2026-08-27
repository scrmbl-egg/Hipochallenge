# TODO: Docs

# class check
execute as @s \
    on attacker \
    unless predicate { \
        type:"minecraft:all_of", \
        terms:[ \
            "hc:class/is_tank", \
            "hc:perk/is_perk2", \
        ], \
    } \
    run \
    return fail

# give effects to victim
function hc:util/effect/give_ability_effects \
    with storage hc:main consts.\
    classes[{key:"hc:tank"}].\
    perks[{id:2}].tank_p2_data.attack.effects_info
