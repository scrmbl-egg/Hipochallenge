execute at @a as @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
team modify team1 color white
team modify team2 color white

# TODO: get values from neutral team instead of hardcoding

data modify storage minecraft:hipochallenge vars.teams.team1.color_number set from storage minecraft:hipochallenge consts.teams.neutral.color_number
data modify storage minecraft:hipochallenge vars.teams.team1.dust_color set from storage minecraft:hipochallenge consts.teams.neutral.dust_color
data modify storage minecraft:hipochallenge vars.teams.team1.text_color set from storage minecraft:hipochallenge consts.teams.neutral.text_color
data modify storage minecraft:hipochallenge vars.teams.team1.armor_color set from storage minecraft:hipochallenge consts.teams.neutral.armor_color
data modify storage minecraft:hipochallenge vars.teams.team1.trim_material set from storage minecraft:hipochallenge consts.teams.neutral.trim_material

data modify storage minecraft:hipochallenge vars.teams.team2.color_number set from storage minecraft:hipochallenge consts.teams.neutral.color_number
data modify storage minecraft:hipochallenge vars.teams.team2.dust_color set from storage minecraft:hipochallenge consts.teams.neutral.dust_color
data modify storage minecraft:hipochallenge vars.teams.team2.text_color set from storage minecraft:hipochallenge consts.teams.neutral.text_color
data modify storage minecraft:hipochallenge vars.teams.team2.armor_color set from storage minecraft:hipochallenge consts.teams.neutral.armor_color
data modify storage minecraft:hipochallenge vars.teams.team2.trim_material set from storage minecraft:hipochallenge consts.teams.neutral.trim_material
