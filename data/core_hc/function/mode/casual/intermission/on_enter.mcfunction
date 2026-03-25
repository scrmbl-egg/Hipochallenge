#>core_hc:mode/casual/intermission/on_enter
#
# Function called when entering the intermission state of the casual game mode.

## SCOREBOARDS
scoreboard objectives add __hc.Intermission dummy

# store duration
execute store result score __$hc_duration_secs __hc.Intermission \
    run \
    data get storage hc:main consts.game.modes[{internal_name:"hc:casual"}].\
    casual_data.intermission_duration_seconds


## SETUP STOPWATCH
stopwatch create hc:casual/intermission


## SETUP BOSSBAR
bossbar add hc:casual/intermission ""
bossbar set hc:casual/intermission color blue
bossbar set hc:casual/intermission players \
    @a[predicate=hc:team/is_in_match_team]
bossbar set hc:casual/intermission style progress
bossbar set hc:casual/intermission name { \
    translate:"", \
    fallback:"%1$s \u231b | %2$s", \
    with:[ \
        {score:{name:"__$hc_remaining",objective:"__hc.Intermission"}}, \
        { \
            translate:"hc.selection.kit_and_perk", \
            fallback:"Select your kit & perk", \
        }, \
    ], \
}
bossbar set hc:casual/intermission visible true
execute store result bossbar hc:casual/intermission max \
    run \
    scoreboard players get __$hc_duration_secs __hc.Intermission


## DISPLAY TITLES
title @a[predicate=hc:team/is_in_match_pvp_team] times 0.2s 4s 0.75s
title @a[predicate=hc:team/is_in_match_pvp_team] title ""
title @a[predicate=hc:team/is_in_match_pvp_team] subtitle { \
    translate:"hc.selection.kit_and_perk", \
    fallback:"Select your kit & perk", \
    color:"#47bafc", \
}

# TODO: translate this text
function hc:msg/spectators/send { \
    text:{ \
        translate:"", \
        fallback:"Waiting for teams to select their next kits & perks...", \
    }, \
}


## FX
playsound minecraft:entity.player.levelup \
    ui @a[predicate=hc:team/is_in_match_team] 0 1000 0 1 1 1


# memory freed in exit function
