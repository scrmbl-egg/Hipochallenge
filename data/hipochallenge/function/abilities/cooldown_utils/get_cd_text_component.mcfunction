# params
    # ticks

# TODO: If $(ticks) == -1, the function must return a text component with the "only one use"
# string key, otherwise, if $(ticks) != -1, the function must return a text component with the
# "reusable after: Xs" string key.

scoreboard objectives add local dummy

$scoreboard players set #ticks_param local $(ticks)

scoreboard objectives remove local