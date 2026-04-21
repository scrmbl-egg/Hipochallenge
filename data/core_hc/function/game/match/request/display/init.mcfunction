#>core_hc:game/match/request/display/init
#
# Initialises the match request display.
#
# @context requesting player

# create local scoreboard
scoreboard objectives add __hc.MatchRequestDisplay dummy

## set up temp data
data modify storage hc:temp mreq_display set value { \
    set_r4_display_name_args:{ \
        score_objective:"__hc.MatchRequestDisplay", \
        score_holder:"hc:r4", \
        text:{ \
            translate:"hc.match_request.mode", \
            fallback:"Mode: %s", \
            with:[{}], \
        }, \
    }, \
}
# get mode translated name with specified style
data modify storage hc:temp mreq_display.set_r4_display_name_args.text.with[0] \
    set from storage hc:main vars.game_context.mode.preset.name
data modify storage hc:temp mreq_display.set_r4_display_name_args.text.with[0] \
    merge from storage \
    hc:main vars.game_context.mode.preset.match_request.name_text_style

## set up display score
# name/title
scoreboard objectives modify __hc.MatchRequestDisplay displayname { \
    translate:"hc.match_request.title", \
    fallback:"NEW MATCH REQUEST", \
    color:"gold", \
    bold:true, \
}

# order display rows
scoreboard players set hc:r0 __hc.MatchRequestDisplay 6
scoreboard players set hc:r1 __hc.MatchRequestDisplay 5
scoreboard players set hc:r2 __hc.MatchRequestDisplay 4
scoreboard players set hc:r3 __hc.MatchRequestDisplay 3
scoreboard players set hc:r4 __hc.MatchRequestDisplay 2
scoreboard players set hc:r5 __hc.MatchRequestDisplay 1
scoreboard players set hc:r6 __hc.MatchRequestDisplay 0

# set display row texts
scoreboard players display numberformat hc:r0 __hc.MatchRequestDisplay blank
scoreboard players display numberformat hc:r1 __hc.MatchRequestDisplay blank
scoreboard players display numberformat hc:r2 __hc.MatchRequestDisplay blank
scoreboard players display numberformat hc:r3 __hc.MatchRequestDisplay blank
scoreboard players display numberformat hc:r4 __hc.MatchRequestDisplay blank
scoreboard players display numberformat hc:r5 __hc.MatchRequestDisplay blank
scoreboard players display numberformat hc:r6 __hc.MatchRequestDisplay blank

scoreboard players display name hc:r0 __hc.MatchRequestDisplay { \
    translate:"hc.match_request.from_player", \
    fallback:"From: %s", \
    with:[{selector:"@s",underlined:true}], \
}
scoreboard players display name hc:r1 __hc.MatchRequestDisplay ""
scoreboard players display name hc:r2 __hc.MatchRequestDisplay { \
    translate:"hc.match_request.accept_trigger_tip", \
    fallback:"Type \"%s\" to accept!", \
    with:[ \
        { \
            translate:"", \
            fallback:"/trigger %s", \
            color:"gray", \
            with:[{text:"accept",color:"aqua"}], \
        }, \
    ], \
}
scoreboard players display name hc:r3 __hc.MatchRequestDisplay ""
function core_hc:util/score_holder/set_display_name \
    with storage hc:temp mreq_display.set_r4_display_name_args

# update dynamic rows (a single time)
function core_hc:game/match/request/display/update

# set on sidebar display
scoreboard objectives setdisplay sidebar __hc.MatchRequestDisplay

# free memory
data remove storage hc:temp mreq_display
