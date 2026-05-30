#>core_hc:team/add_all
#
# Adds all the teams in the minigame.
#
# @returns
#   Result: 1 if all teams are added

function hc:msg/debug/send_info {text:"\"Adding teams...\""}

## PLAYER TEAMS

# admins
team add hc.Admins
team modify hc.Admins collisionRule never
team modify hc.Admins friendlyFire false
team modify hc.Admins nametagVisibility always
team modify hc.Admins seeFriendlyInvisibles true
team modify hc.Admins color yellow
team modify hc.Admins displayName [ \
    {text:"",color:"#ff9148"}, \
    {translate:"hc.teams.admins.name",fallback:"Admins"}, \
]
team modify hc.Admins prefix [ \
    {text:"",color:"#ff9148"}, \
    "[", \
    {translate:"hc.teams.admins.name",fallback:"Admins"}, \
    "] " \
]

# team 1 (name is not initialized, as it can be changed)
team add hc.Team1
team modify hc.Team1 collisionRule always
team modify hc.Team1 friendlyFire false
team modify hc.Team1 nametagVisibility hideForOtherTeams
team modify hc.Team1 seeFriendlyInvisibles true

# team 2 (name is not initialized, as it can be changed)
team add hc.Team2
team modify hc.Team2 collisionRule always
team modify hc.Team2 friendlyFire false
team modify hc.Team2 nametagVisibility hideForOtherTeams
team modify hc.Team2 seeFriendlyInvisibles true

# neutral (only available in training)
team add hc.Neutral
team modify hc.Neutral collisionRule pushOwnTeam
team modify hc.Neutral friendlyFire true
team modify hc.Neutral nametagVisibility always
team modify hc.Neutral seeFriendlyInvisibles false
team modify hc.Neutral color white
team modify hc.Neutral displayName [ \
    {text:"",color:"#98bdc2"}, \
    {translate:"hc.teams.neutral.name",fallback:"Neutral"}, \
]
team modify hc.Neutral prefix [ \
    {text:"",color:"#98bdc2"}, \
    "[", \
    {translate:"hc.teams.neutral.name",fallback:"Neutral"}, \
    "] ", \
]

# spectators
team add hc.Spectators
team modify hc.Spectators collisionRule never
team modify hc.Spectators friendlyFire false
team modify hc.Spectators nametagVisibility hideForOtherTeams
team modify hc.Spectators seeFriendlyInvisibles true
team modify hc.Spectators color gray
team modify hc.Spectators displayName [ \
    {translate:"hc.teams.spectators.name",fallback:"Spectators"}, \
]
team modify hc.Spectators prefix [ \
    "[", \
    {translate:"hc.teams.spectators.name",fallback:"Spectators"}, \
    "] ", \
]

# not playing (not playing game and not in training)
team add hc.NotPlaying
team modify hc.NotPlaying collisionRule pushOwnTeam
team modify hc.NotPlaying friendlyFire false
team modify hc.NotPlaying nametagVisibility always
team modify hc.NotPlaying seeFriendlyInvisibles false
team modify hc.NotPlaying color reset
team modify hc.NotPlaying displayName [ \
    {translate:"hc.teams.not_playing.name",fallback:"Not playing"}, \
]
team modify hc.NotPlaying prefix ""

## OTHER

# entities with no collision
team add hc.NoCollisionEntity
team modify hc.NoCollisionEntity collisionRule never
team modify hc.NoCollisionEntity friendlyFire true
team modify hc.NoCollisionEntity nametagVisibility never
team modify hc.NoCollisionEntity seeFriendlyInvisibles false
team modify hc.NoCollisionEntity color reset
team modify hc.NoCollisionEntity prefix "[hc.NoCollisionEntity] "

## __KEEP AT BOTTOM OF FILE__
# return 1 for success
return 1
