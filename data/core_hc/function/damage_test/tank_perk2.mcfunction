# TODO: Docs

# class check
execute as @s \
    on attacker \
    unless predicate { \
        condition:"minecraft:all_of", \
        terms:[ \
            {condition:"minecraft:reference",name:"hc:class/is_tank"}, \
            {condition:"minecraft:reference",name:"hc:perk/is_perk2"}, \
        ], \
    } \
    run \
    return fail

# give effects to victim
function hc:util/effect/give_ability_effects \
    with storage hc:main consts.\
    classes[{internal_name:"hc:tank"}].\
    perks[{id:2}].tank_p2_data.attack.effects_info
