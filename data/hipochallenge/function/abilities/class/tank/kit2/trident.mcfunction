# TODO: Since no other class has a trident, this function can be moved to
# \projectiles, some other parts can be moved to \vfx

execute as @s[nbt={DealtDamage:1b}] at @s run function hipochallenge:abilities/class/tank/kit2/trident/kill_and_return

particle minecraft:warped_spore ~ ~ ~ 0.1 0.1 0.1 0 4 force
particle minecraft:mycelium ~ ~ ~ 0 0 0 0 5 force
particle dust_color_transition{from_color:[0.000,1.000,0.933],scale:1,to_color:[0.000,0.000,0.000]} ~ ~ ~ 0.1 0.1 0.1 0 4 force