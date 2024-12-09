# params:
    # team
    # x
    # y
    # z

# summon
$summon marker $(x) $(y) $(z) {Tags:["bubble_shield"],data:{team:"$(team)",id:"change_me"}}

# set id
execute as @n[type=marker,nbt={data:{id:"change_me"}}] run function std:strings/uuid/get {dest_st:"minecraft:hipochallenge",dest_path:"local_id"}
execute as @n[type=marker,nbt={data:{id:"change_me"}}] run function hipochallenge:abilities/class/tank/kit3/bubble_shield/modify_id_st with storage minecraft:hipochallenge

# clear local data
data remove storage minecraft:hipochallenge local_id