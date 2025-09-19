# params:
    # team - $summon marker ~ ~ ~ {Tags:["bubble_shield"],data:{team:"$(team)",id:"change_me"}}

# FIXME: deprecate

# summon
#summon marker ~ ~ ~ {CustomNameVisible:1b,Tags:["bubble_shield","just_spawned"],CustomName:'{"color":"aqua","text":"test"}'}

# set uuid
#execute as @n[type=marker,tag=just_spawned,tag=bubble_shield] run function std:strings/uuid/get {dest_st:"minecraft:hipochallenge",dest_path:"local_bubble_shield.uuid_str"}


# set lifetime
#execute as @n[type=marker,tag=just_spawned,tag=bubble_shield] run execute store result score @s life_timer run data get storage minecraft:hipochallenge consts.classes.tank.kit3.bubble_shield.lifetime_ticks

# clear local data and remove tag
#tag @n[type=marker,tag=just_spawned,tag=bubble_shield] remove just_spawned
#data remove storage minecraft:hipochallenge local_bubble_shield
