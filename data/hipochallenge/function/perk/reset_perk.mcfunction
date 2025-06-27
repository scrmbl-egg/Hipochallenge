scoreboard players set @s perk 0
function hipochallenge:msg/debug/send_info \
    {text:[ \
        { \
            selector:"@s", \
        }, \
        { \
            text:" has reset their perk.", \
        }, \
    ]}
