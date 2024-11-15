# storage:
    # local_spirit_owner
    # local_spirit_uuid
    # local_target

# disable holding click
execute if entity @s[tag=redirected_spirit_cache] run return fail
tag @s add redirected_spirit_cache

# if there is NO target -> user is new target
$execute unless data storage minecraft:hipochallenge local_target run execute as @e[type=marker,nbt={UUID:$(local_spirit_uuid)}] run data modify entity @s data.target set from storage minecraft:hipochallenge local_spirit_owner

# if there is a target -> update target
$execute if data storage minecraft:hipochallenge local_target run execute as @e[type=marker,nbt={UUID:$(local_spirit_uuid)}] run data modify entity @s data.target set from storage minecraft:hipochallenge local_target

# if shifting -> user is new target
$execute if predicate std:input/sneak as @e[type=marker,nbt={UUID:$(local_spirit_uuid)}] run data modify entity @s data.target set from storage minecraft:hipochallenge local_spirit_owner


# sound(s)
$execute at @e[type=marker,nbt={UUID:$(local_spirit_uuid)}] run playsound minecraft:entity.allay.ambient_with_item master @a ~ ~ ~ 1 1