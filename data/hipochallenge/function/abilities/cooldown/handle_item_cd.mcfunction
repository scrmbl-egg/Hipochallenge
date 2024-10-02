# params:
    # item_id
    # cd_item_modifier
    # cd_score
    # cd_const

# create local score
scoreboard objectives add local_cd_score dummy

# set score to cooldown constant
$execute store result score $cd_ticks local_cd_score run data get storage minecraft:hipochallenge $(cd_const)

# if cd_ticks <= -1, cooldown is infinite -> clear item
$execute if score $cd_ticks local_cd_score matches ..-1 run clear @s *[custom_data={item_id:$(item_id)}] 1

# otherwise, set cooldown item modifier, and set cooldown score
$execute if score $cd_ticks local_cd_score matches 0.. if items entity @s weapon.offhand *[custom_data={item_id:$(item_id)}] run item modify entity @s weapon.offhand $(cd_item_modifier)
$execute if score $cd_ticks local_cd_score matches 0.. if items entity @s weapon.mainhand *[custom_data={item_id:$(item_id)}] run item modify entity @s weapon.mainhand $(cd_item_modifier)
$execute if score $cd_ticks local_cd_score matches 0.. store result score @s $(cd_score) run data get storage minecraft:hipochallenge $(cd_const)

# remove score
scoreboard objectives remove local_cd_score