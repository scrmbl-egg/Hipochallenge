# params: perk

$scoreboard players set @s perk $(perk)

$function hipochallenge:msg/debug/send_info \
    {text:[ \
        { \
            selector:"@s", \
        }, \
        { \
            text:" has selected kit number $(kit)", \
        }, \
    ]}
