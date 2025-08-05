#>core_hc:team/name/set
#
# Sets the custom name of a team.
#
# @input
#   team: #[team] string,
#       Team whose name is going to be changed.
#   text: (::Hipochallenge::mcdoc::team::TeamNameText | Text),
#       Custom name text component of the team.
#   color: (#[color="hex_rgb"] string | #[color="named"] TextColor)
#       Color of the team's name.

$team modify $(team) displayName [ \
    {text:"",color:"$(color)"}, \
    $(text), \
]

$team modify $(team) prefix [ \
    {text:"",color:"$(color)"}, \
    "[", \
    $(text), \
    "] ", \
]
