# generates:
    # local_self_team

$execute as @p[nbt={UUID:$(local_spirit_owner)}] run function hipochallenge:teams/get/get_self_team {dest_st:"minecraft:hipochallenge",dest_path:"local_self_team"}
# gives ownership of:
    # local_self_team
