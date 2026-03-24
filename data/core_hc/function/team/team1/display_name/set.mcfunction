#>core_hc:team/team1/display_name/set
#
# Sets the display name of the first team, also setting the player name prefix.
#
# @input
#   text: (
#       ::Hipochallenge::mcdoc::team::TeamNameText |
#       ::java::util::text::TranslatedText |
#   )
#       Custom name text component of the team.
#   prefix_color: (#[color="hex_rgb"] string | #[color="named"] TextColor)
#       Color of the team's name.

# change team name and prefix
$team modify hc.Team1 displayName [{text:"",color:"$(prefix_color)"},$(text)]
$team modify hc.Team1 prefix [ \
    {text:"",color:"$(prefix_color)"},"[",$(text),"] ", \
]
