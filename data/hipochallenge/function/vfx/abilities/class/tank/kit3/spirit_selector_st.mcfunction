# storage:
    # local_target

$execute as @p[nbt={UUID:$(local_target)}] at @s anchored eyes positioned ^ ^ ^ run particle minecraft:glow ~ ~0.5 ~ 0 0 0 0 1 force @p[nbt={UUID:$(local_spirit_owner)}]