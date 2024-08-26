# storage:
    # MARKSMAN_K2_MAX_PROJECTILE_AMOUNT
    # MARKSMAN_K2_NEW_PROJECTILE_REST_CD_TICKS

scoreboard objectives add local dummy

# check how many arrows the player has in their inventory (clear 0 results in the amount of items detected)
execute store result score $projectile_count local run clear @s arrow 0
$scoreboard players set $max_projectiles local $(MARKSMAN_K2_MAX_PROJECTILE_AMOUNT)

# if has less than max amount of projectiles, give projectile and set faster cooldown
# HACK: this must be eventually replaced with a proper give function
execute as @s if score $projectile_count local < $max_projectiles local run give @s arrow 1
$execute as @s if score $projectile_count local < $max_projectiles local run scoreboard players set @s marksman_kit2_new_projectile_cd $(MARKSMAN_K2_NEW_PROJECTILE_REST_CD_TICKS)
scoreboard objectives remove local