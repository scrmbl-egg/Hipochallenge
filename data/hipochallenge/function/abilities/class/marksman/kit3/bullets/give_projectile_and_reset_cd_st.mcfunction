# storage:
    # MARKSMAN_K3_MAX_PROJECTILE_AMOUNT
    # MARKSMAN_K3_NEW_PROJECTILE_REST_CD_TICKS

scoreboard objectives add local dummy

# check how many arrows the player has in their inventory (clear 0 results in the amount of items detected)
execute store result score $projectile_count local run clear @s *[custom_data={item_id:marksman_k3_bullet}] 0

# if has less than max amount of projectiles, give projectile and set faster cooldown
# HACK: this must be eventually replaced with a proper give function
$execute if score $projectile_amount local matches ..$(MARKSMAN_K3_MAX_PROJECTILE_AMOUNT) run give @s arrow[custom_data={item_id:marksman_k3_bullet}]
$execute if score $projectile_amount local matches ..$(MARKSMAN_K3_MAX_PROJECTILE_AMOUNT) run scoreboard players set @s marksman_kit3_new_projectile_cd $(MARKSMAN_K1_NEW_PROJECTILE_REST_CD_TICKS)

scoreboard objectives remove local