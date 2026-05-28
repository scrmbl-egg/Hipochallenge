#>core_hc:team/remove_all
#
# Removes all the teams in the minigame.

function hc:msg/debug/send_info { \
    text:"\"Removing teams...\"", \
}

# admins
team remove hc.Admins

# team 1
team remove hc.Team1

# team 2
team remove hc.Team2

# neutral (only available in training)
team remove hc.Neutral

# spectators
team remove hc.Spectators

# not playing (not playing game and not in training)
team remove hc.NotPlaying

## OTHER

# entities with no collision
team remove hc.NoCollisionEntity
