#>core_hc:ability/marksman/tick
#
# Tick function for the marksman class abilities.

# TODO: change and format following commands
# kit 1

    # bow
    # the bow can't have a proper "used" advancement, so the shot detection is
    # done here
    execute as @a[scores={hc.BowShot=1..}] if items entity @s weapon.* *[custom_data={item_id:marksman_k1_bow}] run function hc:ability/class/marksman/kit1/on_bow_shot
    execute as @a[scores={hc.BowShot=1..}] run scoreboard players set @s hc.BowShot 0

    # arrows
    # TODO: deprecate
    #execute as @a[scores={hc.MarksmanKit1NewProjectileCooldown=1},gamemode=!creative] run function hc:ability/class/marksman/kit1/arrows/give_projectile_and_reset_cd_st with storage minecraft:hipochallenge

# kit 2

    # arrows
    # TODO: deprecate
    #execute as @a[scores={hc.MarksmanKit2NewProjectileCooldown=1},gamemode=!creative] run function hc:ability/class/marksman/kit2/arrows/give_projectile_and_reset_cd_st with storage minecraft:hipochallenge


# kit 3

    # bullets
    # HACK: this command must be changed to a proper give with item modifier
    execute as @a[scores={hc.MarksmanKit3NewProjectileCooldown=1},gamemode=!creative] run give @s arrow
