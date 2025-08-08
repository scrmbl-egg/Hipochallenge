#>core_hc:team/name/set
#
# Sets the custom name of a team.
#
# @input
#   team: #[team] string,
#       Team whose name is going to be changed.
#   text: (::Hipochallenge::mcdoc::team::TeamNameText | Text),
#       Custom name text component of the team.
#   prefix_color: (#[color="hex_rgb"] string | #[color="named"] TextColor)
#       Color of the team's name.
#   team_color: #[color="named"] TextColor
#       Internal color of the team.

# change team name and prefix
$team modify $(team) displayName [ \
    {text:"",color:"$(prefix_color)"}, \
    $(text), \
]
$team modify $(team) prefix [ \
    {text:"",color:"$(prefix_color)"}, \
    "[", \
    $(text), \
    "] ", \
]

# change player name color
$team modify $(team) color $(team_color)
