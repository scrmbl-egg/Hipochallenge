#>hc:mechanic/suppression/set_ticks
#
# Sets the duration of the suppression state in the executing player. This
# function will only work if the amount of already remaining ticks is less
# than the specified value.
#
# @context player
# @input
#   ticks: int @ 0..
#       Desired duration of the suppression state in ticks.

$execute unless score @s hc.SuppressionTimer matches $(ticks).. \
    run \
    scoreboard players set @s hc.SuppressionTimer $(ticks)
