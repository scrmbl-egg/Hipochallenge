# storage:
    # local_spirit_owner

# HACK(scrmbl-egg): changed SelectedItem nbt to "execute if items" statement
$execute as @p[nbt={UUID:$(local_spirit_owner)}] if items entity @s weapon.* *[custom_data={item_id:tank_k3_redirect_spirit}] at @s run function hipochallenge:abilities/class/tank/kit3/spirit/player_handler_st with storage minecraft:hipochallenge
