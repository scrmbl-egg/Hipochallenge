#>core_hc:projectile/set_no_gravity
#
# Makes a projectile entity remove it's gravity, and start its lifetime timer.
#
# @context entity (projectile)

# set no gravity
data modify entity @s NoGravity set value true

# start lifetime timer
execute store result score @s hc.LifeTimer \
    run \
    data get storage \
    minecraft:hipochallenge consts.limits.no_gravity_projectiles_lifetime_ticks
