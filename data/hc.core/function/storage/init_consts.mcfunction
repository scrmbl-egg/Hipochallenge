#>hc.core:storage/init_consts
#
# Initializes all global constants in the datapack.
#
# This function is executed every reload, or 'load.mcfunction' call.
# This file is meant to be changed only by the developers, or a user who might
# want to change properties of the game.
#
# @returns
#   Result: 1 if all constants are initialized

# TODO: implement game state functions (current ones are placeholders)
# TODO: Complete the list of constants
# TODO: Many constants should be moved to number providers

function hc:msg/debug/send_info { \
    text:"\"Initializing datapack constants...\"", \
}

# reset
data remove storage hc:main consts

## MAP CONSTANTS
data modify storage hc:main consts.map set value { \
    name:"HIPOCHALLENGE - Phoenix", \
    version:"Pre-Alpha", \
}

## GAME CONSTANTS
data modify storage hc:main consts.game set value { \
    match_request:{ \
        duration_seconds:120, \
    }, \
    modes:[ \
        { \
            key:"hc:casual", \
            id:0, \
            name:{translate:"hc.mode.casual",fallback:"Casual"}, \
            team_sizes:[I; 3, 3], \
            match_request:{ \
                name_text_style:{color:"#59ff30"}, \
            }, \
            on_start_function:"hc.core:game/mode/casual/on_start", \
            on_tick_function:"hc.core:game/mode/casual/on_tick", \
            on_end_function:"hc.core:game/mode/casual/on_end", \
            states:[ \
                { \
                    key:"level_intro", \
                    id:1, \
                    on_enter_function:"hc.core:game/mode/casual/level_intro/on_enter", \
                    on_tick_function:"hc.core:game/mode/casual/level_intro/on_tick", \
                    on_exit_function:"hc.core:game/mode/casual/level_intro/on_exit", \
                    start_state:{}, \
                }, \
                { \
                    key:"intermission", \
                    id:2, \
                    on_enter_function:"hc.core:game/mode/casual/intermission/on_enter", \
                    on_tick_function:"hc.core:game/mode/casual/intermission/on_tick", \
                    on_exit_function:"hc.core:game/mode/casual/intermission/on_exit", \
                }, \
                { \
                    key:"round_intro", \
                    id:3, \
                    on_enter_function:"hc.core:game/mode/casual/round_intro/on_enter", \
                    on_tick_function:"hc.core:game/mode/casual/round_intro/on_tick", \
                    on_exit_function:"hc.core:game/mode/casual/round_intro/on_exit", \
                }, \
                { \
                    key:"round", \
                    id:4, \
                    on_enter_function:"hc.core:game/mode/casual/round/on_enter", \
                    on_tick_function:"hc.core:game/mode/casual/round/on_tick", \
                    on_exit_function:"hc.core:game/mode/casual/round/on_exit", \
                }, \
                { \
                    key:"round_sudden_death", \
                    id:5, \
                    on_enter_function:"hc.core:game/mode/casual/round_sudden_death/on_enter", \
                    on_tick_function:"hc.core:game/mode/casual/round_sudden_death/on_tick", \
                    on_exit_function:"hc.core:game/mode/casual/round_sudden_death/on_exit", \
                }, \
                { \
                    key:"round_outro", \
                    id:6, \
                    on_enter_function:"hc.core:game/mode/casual/round_outro/on_enter", \
                    on_tick_function:"hc.core:game/mode/casual/round_outro/on_tick", \
                    on_exit_function:"hc.core:game/mode/casual/round_outro/on_exit", \
                }, \
            ], \
            casual_data:{ \
                level_intro_duration_seconds:10, \
                intermission_duration_seconds:30, \
                round_intro_duration_seconds:3, \
                round_duration_seconds:60, \
                round_outro_duration_seconds:5, \
                rounds_to_win:5, \
            }, \
        }, \
        { \
            key:"hc:competitive", \
            id:1, \
            name:{translate:"hc.mode.competitive",fallback:"Competitive"}, \
            team_sizes:[I; 3, 3], \
            match_request:{ \
                name_text_style:{bold:true,color:"#42e486"}, \
            }, \
            on_start_function:"hc.core:game/mode/competitive/on_start", \
            on_tick_function:"hc.core:game/mode/competitive/on_tick", \
            on_end_function:"hc.core:game/mode/competitive/on_end", \
            states:[ \
                { \
                    key:"level_intro", \
                    id:1, \
                    on_enter_function:"hc.core:game/mode/competitive/level_intro/on_enter", \
                    on_tick_function:"hc.core:game/mode/competitive/level_intro/on_tick", \
                    on_exit_function:"hc.core:game/mode/competitive/level_intro/on_exit", \
                    start_state:{}, \
                }, \
                { \
                    key:"intermission", \
                    id:2, \
                    on_enter_function:"hc.core:game/mode/competitive/intermission/on_enter", \
                    on_tick_function:"hc.core:game/mode/competitive/intermission/on_tick", \
                    on_exit_function:"hc.core:game/mode/competitive/intermission/on_exit", \
                }, \
                { \
                    key:"round", \
                    id:3, \
                    on_enter_function:"hc.core:game/mode/competitive/round/on_enter", \
                    on_tick_function:"hc.core:game/mode/competitive/round/on_tick", \
                    on_exit_function:"hc.core:game/mode/competitive/round/on_exit", \
                }, \
            ], \
            competitive_data:{ \
                level_intro_duration_seconds:10, \
                intermission_duration_seconds:30, \
                round_intro_duration_seconds:3, \
                round_duration_seconds:120, \
                round_outro_duration_seconds:5, \
                rounds_to_win:5, \
                min_winning_lead:2, \
            }, \
        }, \
        { \
            key:"hc:deathmatch", \
            id:2, \
            name:{translate:"hc.mode.deathmatch",fallback:"Deathmatch"}, \
            team_sizes:[I; 3, 3], \
            match_request:{ \
                name_text_style:{color:"yellow"}, \
            }, \
            on_start_function:"std:empty", \
            on_tick_function:"std:empty", \
            on_end_function:"std:empty", \
            states:[ \
                { \
                    key:"battle", \
                    id:1, \
                    start_state:{}, \
                    on_enter_function:"std:empty", \
                    on_tick_function:"std:empty", \
                    on_exit_function:"std:empty", \
                }, \
            ], \
            deathmatch_data:{ \
                kills_to_win:30, \
                duration_seconds:300, \
            }, \
        }, \
    ], \
}

## LIMITS
data modify storage hc:main consts.limits set value { \
    no_gravity_projectiles_lifetime_ticks:200, \
}

## TEAM COLOR PRESETS
# neutral -> team_color_presets[0]
data modify storage hc:main consts.team_color_presets append value { \
    key:"hc:neutral", \
    id:0, \
    default_name:{translate:"hc.teams.neutral.name",fallback:"NEUTRAL"}, \
    name_color:"#98bdc2", \
    vanilla_color:"white", \
    dust_color:[0.9f, 0.9f, 0.9f], \
    armor_dye_color:10403008, \
    trim_material:"minecraft:iron", \
}

# red -> team_color_presets[1]
data modify storage hc:main consts.team_color_presets append value { \
    key:"hc:red", \
    id:1, \
    default_name:{translate:"hc.teams.colors.red",fallback:"RED"}, \
    name_color:"#ff3030", \
    vanilla_color:"red", \
    dust_color:[1.0f, 0.0f, 0.0f], \
    armor_dye_color:10952471, \
    trim_material:"minecraft:redstone", \
}

# yellow -> team_color_presets[2]
data modify storage hc:main consts.team_color_presets append value { \
    key:"hc:yellow", \
    id:2, \
    default_name:{translate:"hc.teams.colors.yellow",fallback:"YELLOW"}, \
    name_color:"#fffb0a", \
    vanilla_color:"yellow", \
    dust_color:[1.0f, 1.0f, 0.0f], \
    armor_dye_color:14662182, \
    trim_material:"minecraft:gold", \
}

# green -> team_color_presets[3]
data modify storage hc:main consts.team_color_presets append value { \
    key:"hc:green", \
    id:3, \
    default_name:{translate:"hc.teams.colors.green",fallback:"GREEN"}, \
    name_color:"#2ece49", \
    vanilla_color:"green", \
    dust_color:[0.0f, 1.0f, 0.0f], \
    armor_dye_color:4104251, \
    trim_material:"minecraft:emerald", \
}

# blue -> team_color_presets[4]
data modify storage hc:main consts.team_color_presets append value { \
    key:"hc:blue", \
    id:4, \
    default_name:{translate:"hc.teams.colors.blue",fallback:"BLUE"}, \
    name_color:"#3f3bff", \
    vanilla_color:"blue", \
    dust_color:[0.0f, 0.0f, 1.0f], \
    armor_dye_color:1977039, \
    trim_material:"minecraft:lapis", \
}

# purple -> team_color_presets[5]
data modify storage hc:main consts.team_color_presets append value { \
    key:"hc:purple", \
    id:5, \
    default_name:{translate:"hc.teams.colors.purple",fallback:"PURPLE"}, \
    name_color:"#df2fdf", \
    vanilla_color:"light_purple", \
    dust_color:[1.0f, 0.0f, 1.0f], \
    armor_dye_color:11158177, \
    trim_material:"minecraft:amethyst", \
}

# orange -> team_color_presets[6]
data modify storage hc:main consts.team_color_presets append value { \
    key:"hc:orange", \
    id:6, \
    default_name:{translate:"hc.teams.colors.orange",fallback:"ORANGE"}, \
    name_color:"#ff811a", \
    vanilla_color:"gold", \
    dust_color:[1.0f, 0.455f, 0.141f], \
    armor_dye_color:16281118, \
    trim_material:"minecraft:resin", \
}

# cyan -> team_color_presets[7]
data modify storage hc:main consts.team_color_presets append value { \
    key:"hc:cyan", \
    id:7, \
    default_name:{translate:"hc.teams.colors.cyan",fallback:"CYAN"}, \
    name_color:"#34d5f1", \
    vanilla_color:"aqua", \
    dust_color:[0.20f, 0.83f, 1.0f], \
    armor_dye_color:1819330, \
    trim_material:"minecraft:diamond", \
}

## CLASSES
# tank -> classes[0]
data modify storage hc:main consts.classes append value { \
    key:"hc:tank", \
    id:1, \
    name:{translate:"hc.class.tank.name",fallback:"Tank"}, \
    icon:{translate:"hc.class.tank.icon",fallback:"\u26e8"}, \
    dust_color:[0.176f, 0.6f, 0.392f], \
    attributes:{ \
        max_health:20, \
        armor:20, \
        armor_toughness:12, \
        scale:1.1, \
        burning_time:1.0, \
        explosion_knockback_resistance:0.0, \
    }, \
    list_info:{ \
        class_text_style:{color:"#80c3a1"}, \
        kit_text_style:{color:"#a6d5bd"}, \
        perk_text_style:{color:"#cce7d9"}, \
    }, \
    death_loot_table:"hc:class/tank/death", \
    armor_loot_tables:{ \
        head:"hc:class/tank/armor/head", \
        chest:"hc:class/tank/armor/chest", \
        legs:"hc:class/tank/armor/legs", \
        feet:"hc:class/tank/armor/feet", \
    }, \
    kits:[ \
        { \
            id:1, \
            name:{translate:"hc.class.tank.kit1.name",fallback:"I Guardian"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/tank/item/kit1/hotbar", \
                offhand:"hc:class/tank/item/kit1/offhand", \
            }, \
            data:{ \
                "hc:effect_table":[ \
                    { \
                        key:"horn", \
                        effects:[ \
                            {effect:"minecraft:absorption",seconds:3,amplifier:1,hide_particles:false}, \
                        ], \
                    }, \
                ], \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.tank.kit2.name",fallback:"II Triton"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/tank/item/kit2/hotbar", \
                offhand:"hc:class/tank/item/kit2/offhand", \
            }, \
            data:{ \
                "hc:effect_table":[ \
                    { \
                        key:"horn", \
                        effects:[ \
                            {effect:"minecraft:slowness",seconds:2,amplifier:0,hide_particles:false}, \
                        ], \
                    }, \
                ], \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.tank.kit3.name",fallback:"III Druid"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/tank/item/kit3/hotbar", \
                offhand:"hc:class/tank/item/kit3/offhand", \
            }, \
            data:{ \
                "hc:modifier_table":[ \
                    { \
                        key:"horn", \
                        modifiers:[ \
                            {id:"hc:tank/kit3/armor",attribute:"minecraft:armor",value:-6,operation:"add_value"}, \
                        ], \
                    }, \
                    { \
                        key:"spirit_buff", \
                        modifiers:[ \
                            {id:"hc:tank/kit3/spirit_buff_armor",attribute:"minecraft:armor",value:6,operation:"add_value"}, \
                        ], \
                    }, \
                ], \
                "hc:modifier_ref_table":[ \
                    { \
                        key:"remove_spirit_buff", \
                        modifiers:[ \
                            {id:"hc:tank/kit3/spirit_buff_armor",attribute:"minecraft:armor"}, \
                        ], \
                    }, \
                ], \
            }, \
        }, \
    ], \
    perks:[ \
        { \
            id:1, \
            name:{translate:"hc.class.tank.perk1.name",fallback:"I Nutrition"}, \
            on_equip_function:"hc:ability/tank/perk1/on_equip", \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.tank.perk2.name",fallback:"II Profound scars"}, \
            data:{ \
                "hc:effect_table":[ \
                    { \
                        key:"profound_scars", \
                        effects:[ \
                            {effect:"minecraft:slowness",seconds:1,amplifier:0,hide_particles:false}, \
                        ], \
                    }, \
                ], \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.tank.perk3.name",fallback:"III Inspiration"}, \
            data:{ \
                "hc:modifier_table":[ \
                    { \
                        key:"", \
                        modifiers:[ \
                            {id:"hc:tank/perk3/armor",attribute:"minecraft:armor",value:10,operation:"add_value"}, \
                        ], \
                    }, \
                ], \
            }, \
        }, \
    ], \
}

# marksman -> classes[1]
data modify storage hc:main consts.classes append value { \
    key:"hc:marksman", \
    id:2, \
    name:{translate:"hc.class.marksman.name",fallback:"Marksman"}, \
    icon:{translate:"hc.class.marksman.icon",fallback:"\ud83c\udff9"}, \
    dust_color:[0.788f, 0.541f, 0.11f], \
    attributes:{ \
        max_health:20, \
        armor:12, \
        armor_toughness:0, \
        scale:1, \
        burning_time:1, \
        explosion_knockback_resistance:0, \
    }, \
    list_info:{ \
        class_text_style:{color:"#dfb977"}, \
        kit_text_style:{color:"#e9cea0"}, \
        perk_text_style:{color:"#f2e3c9"}, \
    }, \
    death_loot_table:"hc:class/marksman/death", \
    armor_loot_tables:{ \
        head:"hc:class/marksman/armor/head", \
        chest:"hc:class/marksman/armor/chest", \
        legs:"hc:class/marksman/armor/legs", \
        feet:"hc:class/marksman/armor/feet", \
    }, \
    kits:[ \
        { \
            id:1, \
            name:{translate:"hc.class.marksman.kit1.name",fallback:"I Archer"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/marksman/item/kit1/hotbar", \
                offhand:"hc:class/marksman/item/kit1/offhand", \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.marksman.kit2.name",fallback:"II Sniper"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/marksman/item/kit2/hotbar", \
                offhand:"hc:class/marksman/item/kit2/offhand", \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.marksman.kit3.name",fallback:"III Gunslinger"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/marksman/item/kit3/hotbar", \
                offhand:"hc:class/marksman/item/kit3/offhand", \
            }, \
        }, \
    ], \
    perks:[ \
        { \
            id:1, \
            name:{translate:"hc.class.marksman.perk1.name",fallback:"I Bullseye"}, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.marksman.perk2.name",fallback:"II Lifesaver"}, \
            data:{ \
                "hc:effect_table":[ \
                    { \
                        key:"lifesaver", \
                        effects:[ \
                            {effect:"minecraft:absorption",seconds:3,amplifier:1,hide_particles:false}, \
                        ], \
                    }, \
                ], \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.marksman.perk3.name",fallback:"III Big pockets"}, \
        }, \
    ], \
}

# assassin -> classes[2]
data modify storage hc:main consts.classes append value { \
    key:"hc:assassin", \
    id:3, \
    name:{translate:"hc.class.assassin.name",fallback:"Assassin"}, \
    icon:{translate:"hc.class.assassin.icon",fallback:"\ud83d\udde1"}, \
    dust_color:[0.173f, 0.482f, 0.824f], \
    attributes:{ \
        max_health:20, \
        armor:16, \
        armor_toughness:4, \
        scale:1, \
        burning_time:1, \
        explosion_knockback_resistance:0, \
    }, \
    list_info:{ \
        class_text_style:{color:"#80b0e4"}, \
        kit_text_style:{color:"#a6c8ec"}, \
        perk_text_style:{color:"#ccdff4"}, \
    }, \
    death_loot_table:"hc:class/assassin/death", \
    armor_loot_tables:{ \
        head:"hc:class/assassin/armor/head", \
        chest:"hc:class/assassin/armor/chest", \
        legs:"hc:class/assassin/armor/legs", \
        feet:"hc:class/assassin/armor/feet", \
    }, \
    kits:[ \
        { \
            id:1, \
            name:{translate:"hc.class.assassin.kit1.name",fallback:"I Duelist"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/assassin/item/kit1/hotbar", \
                offhand:"hc:class/assassin/item/kit1/offhand", \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.assassin.kit2.name",fallback:"II Phantom"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/assassin/item/kit2/hotbar", \
                offhand:"hc:class/assassin/item/kit2/offhand", \
            }, \
            data:{ \
                "hc:effect_table":[ \
                    { \
                        key:"stun_mechanism", \
                        effects:[ \
                            {effect:"minecraft:slowness",seconds:2,amplifier:2,hide_particles:false}, \
                            {effect:"minecraft:blindness",seconds:2,amplifier:0,hide_particles:false}, \
                        ], \
                    }, \
                ], \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.assassin.kit3.name",fallback:"III Mercenary"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/assassin/item/kit3/hotbar", \
                offhand:"hc:class/assassin/item/kit3/offhand", \
            }, \
        }, \
    ], \
    perks:[ \
        { \
            id:1, \
            name:{translate:"hc.class.assassin.perk1.name",fallback:"I Contract"}, \
            data:{ \
                "hc:effect_table":[ \
                    { \
                        key:"contract_success", \
                        effects:[ \
                            {effect:"minecraft:strength",seconds:"infinite",amplifier:0,hide_particles:false}, \
                            {effect:"minecraft:instant_health",seconds:1,amplifier:0,hide_particles:false}, \
                        ], \
                    }, \
                ], \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.assassin.perk2.name",fallback:"II Harvesting"}, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.assassin.perk3.name",fallback:"III Acidity"}, \
        }, \
    ], \
}

# support -> classes[3]
data modify storage hc:main consts.classes append value { \
    key:"hc:support", \
    id:4, \
    name:{translate:"hc.class.support.name",fallback:"Support"}, \
    icon:{translate:"hc.class.support.icon",fallback:"\u2795"}, \
    dust_color:[0.863f, 0.455f, 0.141f], \
    attributes:{ \
        max_health:20, \
        armor:12, \
        armor_toughness:0, \
        scale:1, \
        burning_time:1, \
        explosion_knockback_resistance:0, \
    }, \
    list_info:{ \
        class_text_style:{color:"#eaac7c"}, \
        kit_text_style:{color:"#f0c5a3"}, \
        perk_text_style:{color:"#f7decb"}, \
    }, \
    death_loot_table:"hc:class/support/death", \
    armor_loot_tables:{ \
        head:"hc:class/support/armor/head", \
        chest:"hc:class/support/armor/chest", \
        legs:"hc:class/support/armor/legs", \
        feet:"hc:class/support/armor/feet", \
    }, \
    kits:[ \
        { \
            id:1, \
            name:{translate:"hc.class.support.kit1.name",fallback:"I Trapper"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/support/item/kit1/hotbar", \
                offhand:"hc:class/support/item/kit1/offhand", \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.support.kit2.name",fallback:"II Doctor"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/support/item/kit2/hotbar", \
                offhand:"hc:class/support/item/kit2/offhand", \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.support.kit3.name",fallback:"II Doctor"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/support/item/kit3/hotbar", \
                offhand:"hc:class/support/item/kit3/offhand", \
            }, \
        }, \
    ], \
    perks:[ \
        { \
            id:1, \
            name:{translate:"hc.class.support.perk1.name",fallback:"I Overclock"}, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.support.perk2.name",fallback:"II Personal space"}, \
            data:{ \
                "hc:effect_table":[ \
                    { \
                        key:"explosion", \
                        effects:[ \
                            {effect:"minecraft:blindness",seconds:2,amplifier:0,hide_particles:false}, \
                            {effect:"minecraft:jump_boost",seconds:2,amplifier:0,hide_particles:true}, \
                        ], \
                    }, \
                ], \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.support.perk3.name",fallback:"III Supercharge"}, \
        }, \
    ], \
}

# recon -> classes[4]
data modify storage hc:main consts.classes append value { \
    key:"hc:recon", \
    id:5, \
    name:{translate:"hc.class.recon.name",fallback:"Recon"}, \
    icon:{translate:"hc.class.recon.icon",fallback:"\ud83d\udc41"}, \
    dust_color:[0.863f, 0.455f, 0.141f], \
    attributes:{ \
        max_health:20, \
        armor:12, \
        armor_toughness:4, \
        scale:0.81, \
        burning_time:1, \
        explosion_knockback_resistance:0, \
    }, \
    list_info:{ \
        class_text_style:{color:"#b99dda"}, \
        kit_text_style:{color:"#cebae5"}, \
        perk_text_style:{color:"#e3d8f0"}, \
    }, \
    death_loot_table:"hc:class/recon/death", \
    armor_loot_tables:{ \
        head:"hc:class/recon/armor/head", \
        chest:"hc:class/recon/armor/chest", \
        legs:"hc:class/recon/armor/legs", \
        feet:"hc:class/recon/armor/feet", \
    }, \
    kits:[ \
        { \
            id:1, \
            name:{translate:"hc.class.recon.kit1.name",fallback:"I Spec. ops"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/recon/item/kit1/hotbar", \
                offhand:"hc:class/recon/item/kit1/offhand", \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.recon.kit2.name",fallback:"II Tracker"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/recon/item/kit2/hotbar", \
                offhand:"hc:class/recon/item/kit2/offhand", \
            }, \
            data:{ \
                "hc:effect_table":[ \
                    { \
                        key:"flare_arrow", \
                        effects:[ \
                            {effect:"minecraft:blindness",seconds:2,amplifier:0,hide_particles:false}, \
                            {effect:"minecraft:glowing",seconds:5,amplifier:0,hide_particles:false}, \
                        ], \
                    }, \
                ], \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.recon.kit3.name",fallback:"III Anomaly"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/recon/item/kit3/hotbar", \
                offhand:"hc:class/recon/item/kit3/offhand", \
            }, \
        }, \
    ], \
    perks:[ \
        { \
            id:1, \
            name:{translate:"hc.class.recon.perk1.name",fallback:"I Inhibitor"}, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.recon.perk2.name",fallback:"II Assimilation"}, \
            data:{ \
                "hc:effect_table":[ \
                    { \
                        key:"on_glowing_enemy_hit", \
                        effects:[ \
                            {effect:"minecraft:haste",seconds:3,amplifier:2,hide_particles:false}, \
                        ], \
                    }, \
                ], \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.recon.perk3.name",fallback:"III Animal instinct"}, \
        }, \
    ], \
}

# assault -> classes[5]
data modify storage hc:main consts.classes append value { \
    key:"hc:assault", \
    id:6, \
    name:{translate:"hc.class.assault.name",fallback:"Assault"}, \
    icon:{translate:"hc.class.assault.icon",fallback:"\u2605"}, \
    dust_color:[0.803f, 0.286f, 0.270f], \
    attributes:{ \
        max_health:20, \
        armor:12, \
        armor_toughness:20, \
        scale:1, \
        burning_time:1, \
        explosion_knockback_resistance:0, \
    }, \
    list_info:{ \
        class_text_style:{color:"#dc928e"}, \
        kit_text_style:{color:"#e7b3b0"}, \
        perk_text_style:{color:"#f1d3d2"}, \
    }, \
    death_loot_table:"hc:class/assault/death", \
    armor_loot_tables:{ \
        head:"hc:class/assault/armor/head", \
        chest:"hc:class/assault/armor/chest", \
        legs:"hc:class/assault/armor/legs", \
        feet:"hc:class/assault/armor/feet", \
    }, \
    kits:[ \
        { \
            id:1, \
            name:{translate:"hc.class.assault.kit1.name",fallback:"I Explosives expert"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/assault/item/kit1/hotbar", \
                offhand:"hc:class/assault/item/kit1/offhand", \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.assault.kit2.name",fallback:"II Harpooner"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/assault/item/kit2/hotbar", \
                offhand:"hc:class/assault/item/kit2/offhand", \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.assault.kit3.name",fallback:"III Commander"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/assault/item/kit3/hotbar", \
                offhand:"hc:class/assault/item/kit3/offhand", \
            }, \
        }, \
    ], \
    perks:[ \
        { \
            id:1, \
            name:{translate:"hc.class.assault.perk1.name",fallback:"I Engineering"}, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.assault.perk2.name",fallback:"II Adaptable shell"}, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.assault.perk3.name",fallback:"III Chase"}, \
            data:{ \
                "hc:effect_table":[ \
                    { \
                        key:"looking_at_enemy", \
                        effects:[ \
                            {effect:"minecraft:speed",seconds:1,amplifier:0,hide_particles:true}, \
                        ], \
                    }, \
                ], \
            }, \
        }, \
    ], \
}

## LEVELS
# subterranean decay
data modify storage hc:main consts.levels append value { \
    key:"hc:cnduit", \
    id:0, \
    name:{translate:"hc.level.cnduit.name",fallback:"Conduits"}, \
}

# froggyland playplace 2
data modify storage hc:main consts.levels append value { \
    key:"hc:froggy", \
    id:1, \
    name:{translate:"hc.level.froggy.name",fallback:"Froggyland"}, \
}

# sepulchral sacrifice 2
data modify storage hc:main consts.levels append value { \
    key:"hc:sacrif", \
    id:2, \
    name:{translate:"hc.level.sacrif.name",fallback:"Sacrifice"}, \
}

# villager factory
data modify storage hc:main consts.levels append value { \
    key:"hc:fctory", \
    id:3, \
    name:{translate:"hc.level.fctory.name",fallback:"Villager Factory"}, \
}

# crazy trains
data modify storage hc:main consts.levels append value { \
    key:"hc:derail", \
    id:4, \
    name:{translate:"hc.level.derail.name",fallback:"Derailed"}, \
}


## EXTENSION CONSTANTS SETUP
function #hc.extension:storage/init_consts


## POST-SETUP CALCULATIONS
# the constants that are calculated here are mainly used for predicates that
# perform checks of constant values.

# class count
execute store result storage hc:main consts.class_count \
    int 1 \
    run \
    data get storage hc:main consts.classes

# team preset count
execute store result storage hc:main consts.team_color_preset_count \
    int 1 \
    run \
    data get storage hc:main consts.team_color_presets

# level count
execute store result storage hc:main consts.level_count \
    int 1 \
    run \
    data get storage hc:main consts.levels


## __KEEP AT BOTTOM OF FILE__
# return 1 for success
return 1
