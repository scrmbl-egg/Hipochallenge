#>hc:mechanic/silence/add
#
# Adds the silenced state in the executing player.
#
# @context player
# @input
#   ticks: int @ 0..
#       Desired duration of the silenced state in ticks.

$execute unless score @s hc.SilenceTimer matches $(ticks).. \
    run \
    scoreboard players set @s hc.SilenceTimer $(ticks)
