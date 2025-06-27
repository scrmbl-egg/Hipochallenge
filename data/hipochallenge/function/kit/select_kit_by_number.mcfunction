# params: kit

$scoreboard players set @s kit $(kit)

$function hipochallenge:msg/debug/send_info \
    {text:[ \
        { \
            selector:"@s", \
        }, \
        { \
            text:" has selected kit number $(kit)", \
        }, \
    ]}

# TODO: announce name of the selected kit.
