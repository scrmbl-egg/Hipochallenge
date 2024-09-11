# origin is actually the owner, thanks minecraft!
execute on origin run function hipochallenge:teams/get/get_self_team
# gives ownership of:
    # local_self_team

# TODO: implement flare arrow explosion when enemy players are nearby 

# explode when shake=1b
execute if entity @s[nbt={shake:1b}] run function hipochallenge:projectiles/flare_arrows/explode

data remove storage minecraft:hipochallenge local_self_team