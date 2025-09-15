#>hipochallenge:mechanic/suppression/set_ticks
#
# Attempts to set the duration in ticks of the suppression state. Will be
# ignored if the current suppression score ticks are greater than the specified
# amount.
#
# @context player
# @input
#   ticks: int @ 0..
#       Desired duration of the suppression state in ticks.

$execute unless score @s hc.SuppressionTimer matches $(ticks).. \
    run \
    scoreboard players set @s hc.SuppressionTimer $(ticks)
