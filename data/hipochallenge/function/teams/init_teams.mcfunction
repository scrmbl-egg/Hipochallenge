# initialise teams

## PLAYER TEAMS

# admins
team add admins
team modify admins collisionRule never
team modify admins friendlyFire false
team modify admins nametagVisibility always
team modify admins seeFriendlyInvisibles true
team modify admins color gold
team modify admins displayName {"translate":"hc.teams.admins.name","fallback":"Admins","underlined":true}
team modify admins prefix ["",{"translate":"hc.teams.admins.name","fallback":"Admins","underlined":true}," "]

# team 1 (name is not initialised, as it can be changed)
team add team1
team modify team1 collisionRule always
team modify team1 friendlyFire false
team modify team1 nametagVisibility hideForOtherTeams
team modify team1 seeFriendlyInvisibles true

# team 2 (name is not initialised, as it can be changed)
team add team2
team modify team2 collisionRule always
team modify team2 friendlyFire false
team modify team2 nametagVisibility hideForOtherTeams
team modify team2 seeFriendlyInvisibles true

# neutral (only available in training)
team add neutral
team modify neutral collisionRule pushOwnTeam
team modify neutral friendlyFire true
team modify neutral nametagVisibility always
team modify neutral seeFriendlyInvisibles false
team modify neutral color white
team modify neutral displayName {"translate":"hc.teams.neutral.name","fallback":"Neutral","underlined":true}
team modify neutral prefix ["",{"translate":"hc.teams.neutral.name","fallback":"Neutral","underlined":true}," "]

# spectators
team add spectators
team modify spectators collisionRule never
team modify spectators friendlyFire false
team modify spectators nametagVisibility hideForOtherTeams
team modify spectators seeFriendlyInvisibles true
team modify spectators color gray
team modify spectators displayName {"translate":"hc.teams.spectators.name","fallback":"Spectators","underlined":true}
team modify spectators prefix ["",{"translate":"hc.teams.spectators.name","fallback":"Spectators","underlined":true}," "]

# not playing (not playing game and not in training)
team add not_playing
team modify not_playing collisionRule pushOwnTeam
team modify not_playing friendlyFire false
team modify not_playing nametagVisibility always
team modify not_playing seeFriendlyInvisibles false
team modify not_playing color white
team modify not_playing displayName {"translate":"hc.teams.not_playing.name","fallback":"Not playing"}
team modify not_playing prefix ""

## OTHER

# entities with no collision
team add no_collision_entity
team modify no_collision_entity collisionRule never
team modify no_collision_entity friendlyFire true
team modify no_collision_entity nametagVisibility never
team modify no_collision_entity seeFriendlyInvisibles false
team modify no_collision_entity color white
team modify no_collision_entity displayName "no_collision_entity"
team modify no_collision_entity prefix ""
