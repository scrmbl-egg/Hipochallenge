# storage:
    # local_self_team
# generates:
    # local_other_uuid

$execute as @a[limit=1,team=$(local_self_team),sort=furthest,tag=!dead] run data modify storage minecraft:hipochallenge local_other_uuid set from entity @s UUID