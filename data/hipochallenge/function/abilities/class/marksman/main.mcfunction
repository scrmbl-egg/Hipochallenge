# kit 1
    
    # bow
    # the bow can't have a proper "used" advancement, so the shot detection is done here
    execute as @a[scores={bow_shot=1..}] if items entity @s weapon.* *[custom_data={item_id:marksman_k1_bow}] run function hipochallenge:abilities/class/marksman/kit1/on_bow_shot
    execute as @a[scores={bow_shot=1..}] run scoreboard players set @s bow_shot 0
    
    # arrows
    # HACK: this command must be changed to a proper give with item modifier
    execute as @a[scores={marksman_kit1_new_projectile_cd=1},gamemode=!creative] run function hipochallenge:abilities/class/marksman/kit1/arrows/give_projectile_and_reset_cd_st with storage minecraft:hipochallenge
    
# kit 2

    # arrows
    # HACK: this command must be changed to a proper give with item modifier
    execute as @a[scores={marksman_kit2_new_projectile_cd=1},gamemode=!creative] run function hipochallenge:abilities/class/marksman/kit2/arrows/give_projectile_and_reset_cd_st with storage minecraft:hipochallenge
    
    
# kit 3

    # bullets
    # HACK: this command must be changed to a proper give with item modifier
    execute as @a[scores={marksman_kit3_new_projectile_cd=1},gamemode=!creative] run give @s arrow