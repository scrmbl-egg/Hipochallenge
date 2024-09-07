#get data
data modify storage hipochallenge local_uuid set from entity @s UUID

# run
execute at @s run function hipochallenge:abilities/class/tank/kit3/spirit/summon_finder_st with storage hipochallenge

# clear local data
data remove storage hipochallenge local_uuid