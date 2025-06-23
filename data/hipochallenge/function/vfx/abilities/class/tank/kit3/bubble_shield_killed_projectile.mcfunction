# params:
    # x_motion
    # y_motion
    # z_motion

# vanish effect particles
$particle firework ~ ~ ~ $(x_motion) $(y_motion) $(z_motion) 0.3 0 normal
$particle firework ~ ~ ~ $(x_motion) $(y_motion) $(z_motion) 0.4 0 normal
$particle firework ~ ~ ~ $(x_motion) $(y_motion) $(z_motion) 0.5 0 normal
$particle firework ~ ~ ~ $(x_motion) $(y_motion) $(z_motion) 0.6 0 normal
$particle firework ~ ~ ~ $(x_motion) $(y_motion) $(z_motion) 0.7 0 normal

# explosion
particle firework ~ ~ ~ 0.1 0.1 0.1 0.1 10 normal

# "block" sound
playsound minecraft:block.bell.use player @a ~ ~ ~ 1 2
