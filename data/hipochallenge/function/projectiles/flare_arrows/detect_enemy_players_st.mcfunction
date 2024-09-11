# storage:
    # local_self_team
    # RECON_K2_FLARE_ARROW_DETECTION_RANGE

# if owner is not neutral, then detect players who are not in the team
scoreboard objectives add local dummy

# check which team has to be detected depending on the owner's team
$execute on origin if entity @s[team=$(local_self_team)] if entity @s[team=team2] run scoreboard players set $detect_team1 local 1
$execute on origin if entity @s[team=$(local_self_team)] if entity @s[team=team1] run scoreboard players set $detect_team2 local 1
$execute on origin if entity @s[team=$(local_self_team)] if entity @s[team=neutral] run scoreboard players set $detect_neutral local 1

# run commands depending on previous results
$execute as @s at @s if score $detect_team1 local matches 1 as @a[team=team1,distance=..$(RECON_K2_FLARE_ARROW_DETECTION_RANGE)] run function hipochallenge:projectiles/flare_arrows/give_detection_effects_st with storage minecraft:hipochallenge
$execute as @s at @s if score $detect_team2 local matches 1 as @a[team=team2,distance=..$(RECON_K2_FLARE_ARROW_DETECTION_RANGE)] run function hipochallenge:projectiles/flare_arrows/give_detection_effects_st with storage minecraft:hipochallenge
$execute as @s at @s if score $detect_neutral local matches 1 as @a[team=neutral,distance=..$(RECON_K2_FLARE_ARROW_DETECTION_RANGE)] run function hipochallenge:projectiles/flare_arrows/give_detection_effects_st with storage minecraft:hipochallenge


# free memory
scoreboard objectives remove local