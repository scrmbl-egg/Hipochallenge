#>hc.core:storage/init_consts
#
# This function is executed every reload, or 'load.mcfunction' call.
# This file is meant to be changed only by the developers, or a user who might
# want to change properties of the game.
#
# @returns
#   Result: 1 if all constants are initialized

# TODO: implement game state functions (current ones are placeholders)
# TODO: Complete the list of constants

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
            data_type:"tank_k1_data", \
            tank_k1_data:{ \
                horn:{ \
                    effects_info:{ \
                        suppression_ticks:0, \
                        effects:[ \
                            {effect:"minecraft:absorption",seconds:3,amplifier:1,hide_particles:false}, \
                        ], \
                    }, \
                    radius:7.0, \
                }, \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.tank.kit2.name",fallback:"II Triton"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/tank/item/kit2/hotbar", \
                offhand:"hc:class/tank/item/kit2/offhand", \
            }, \
            data_type:"tank_k2_data", \
            tank_k2_data:{ \
                horn:{ \
                    effects_info:{ \
                        suppression_ticks:0, \
                        effects:[ \
                            {effect:"minecraft:slowness",seconds:2,amplifier:0,hide_particles:false}, \
                        ], \
                    }, \
                    radius:5.0, \
                    recovery_ticks:20, \
                }, \
                trident:{ \
                    cooldown_ticks:30, \
                }, \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.tank.kit3.name",fallback:"III Druid"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/tank/item/kit3/hotbar", \
                offhand:"hc:class/tank/item/kit3/offhand", \
            }, \
            data_type:"tank_k3_data", \
            tank_k3_data:{ \
                horn:{ \
                    modifiers:[ \
                        {id:"hc:tank_k3_horn_armor",attribute:"minecraft:armor",value:-6,operation:"add_value"}, \
                    ], \
                    radius:8.0, \
                }, \
                spirit:{ \
                    selection:{ \
                        target_mode:"allies_only", \
                        max_distance:5.0f, \
                        on_selected_command:"say selected!", \
                    }, \
                    buff:{ \
                        modifiers:[ \
                            {id:"hc:tank_k3_spirit_buff_armor",attribute:"minecraft:armor",value:6,operation:"add_value"}, \
                        ], \
                        radius:6, \
                    }, \
                    owner_debuff:{ \
                        modifiers:[ \
                            {id:"hc:tank_k3_spirit_debuff_armor",attribute:"minecraft:armor",value:-6,operation:"add_value"}, \
                        ], \
                    }, \
                }, \
                bubble_shield:{ \
                    draw_command:"particle dust_color_transition{from_color:[0.000f, 0.800f, 1.000f],scale:2,to_color:[0.161f, 0.255f, 0.271f]} ~ ~ ~ 0 0 0 0 1 force", \
                    radius:4.0, \
                    high_speed_arrow_detection_radius:10.0, \
                    lifetime_ticks:240, \
                    lifetime_ticks_added_on_impact:60, \
                }, \
            }, \
        }, \
    ], \
    perks:[ \
        { \
            id:1, \
            name:{translate:"hc.class.tank.perk1.name",fallback:"I Nutrition"}, \
            on_equip_function:"hc:ability/tank/perk1/on_equip", \
            data_type:"tank_p1_data", \
            tank_p1_data:{ \
                nutritious_meal:{give_delay_ticks:1200}, \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.tank.perk2.name",fallback:"II Profound scars"}, \
            data_type:"tank_p2_data", \
            tank_p2_data:{ \
                attack:{ \
                    effects_info:{ \
                        suppression_ticks:0, \
                        effects:[ \
                            {effect:"minecraft:slowness",seconds:1,amplifier:0,hide_particles:false}, \
                        ], \
                    }, \
                }, \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.tank.perk3.name",fallback:"III Inspiration"}, \
            data_type:"tank_p3_data", \
            tank_p3_data:{ \
                close_ally_buff:{ \
                    radius:9, \
                    attributes:[ \
                        {id:"hc:tank_p3_inspiration_armor",attribute:"minecraft:armor",value:10,operation:"add_value"}, \
                    ], \
                }, \
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
            data_type:"marksman_k1_data", \
            marksman_k1_data:{ \
                arrows:{ \
                    max_amount:6, \
                    new_first_cooldown_ticks:60, \
                    new_rest_cooldown_ticks:20, \
                }, \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.marksman.kit2.name",fallback:"II Sniper"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/marksman/item/kit2/hotbar", \
                offhand:"hc:class/marksman/item/kit2/offhand", \
            }, \
            data_type:"marksman_k2_data", \
            marksman_k2_data:{ \
                arrows:{ \
                    max_amount:5, \
                    new_first_cooldown_ticks:60, \
                    new_rest_cooldown_ticks:30, \
                }, \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.marksman.kit3.name",fallback:"III Gunslinger"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/marksman/item/kit3/hotbar", \
                offhand:"hc:class/marksman/item/kit3/offhand", \
            }, \
            data_type:"marksman_k3_data", \
            marksman_k3_data:{ \
                bullets:{ \
                    max_amount:6, \
                    new_first_cooldown_ticks:80, \
                    new_rest_cooldown_ticks:40, \
                }, \
                revolver:{ \
                    max_loaded_bullet_amount:6, \
                    recoil_pitch_rotation:-20, \
                    per_shot_cooldown_ticks:10, \
                }, \
            }, \
        }, \
    ], \
    perks:[ \
        { \
            id:1, \
            name:{translate:"hc.class.marksman.perk1.name",fallback:"I Bullseye"}, \
            data_type:"marksman_p1_data", \
            marksman_p1_data:{ \
                suppression_or_on_air_magic_damage:2, \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.marksman.perk2.name",fallback:"II Lifesaver"}, \
            data_type:"marksman_p2_data", \
            marksman_p2_data:{ \
                health_threshold:8, \
                effects_info:{ \
                    suppression_ticks:0, \
                    effects:[ \
                        {effect:"minecraft:absorption",seconds:3,amplifier:1,hide_particles:false}, \
                    ], \
                }, \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.marksman.perk3.name",fallback:"III Big pockets"}, \
            data_type:"marksman_p3_data", \
            marksman_p3_data:{ \
                added_projectiles:3, \
            }, \
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
            data_type:"assassin_k1_data", \
            assassin_k1_data:{ \
                parry:{ \
                    window_duration_ticks:10, \
                    on_owner_when_success:{ \
                        modifiers:[], \
                    }, \
                    on_owner_when_fail:{ \
                        modifiers:[ \
                            {id:"hc:assassin/kit1/owner_failed_parry/entity_interaction_range",attribute:"minecraft:entity_interaction_range",value:-3,operation:"add_value"}, \
                            {id:"hc:assassin/kit1/owner_failed_parry/attack_speed",attribute:"minecraft:attack_speed",value:-1.1,operation:"add_value"}, \
                        ], \
                    }, \
                    on_enemy_when_parried:{ \
                        modifiers:[], \
                        effects_info:{ \
                            suppression_ticks:0, \
                            effects:[], \
                        }, \
                    }, \
                }, \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.assassin.kit2.name",fallback:"II Phantom"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/assassin/item/kit2/hotbar", \
                offhand:"hc:class/assassin/item/kit2/offhand", \
            }, \
            data_type:"assassin_k2_data", \
            assassin_k2_data:{ \
                stun_mechanism:{ \
                    radius:3.0, \
                    effects_info:{ \
                        suppression_ticks:40, \
                        effects:[ \
                            {effect:"minecraft:slowness",seconds:2,amplifier:2,hide_particles:false}, \
                            {effect:"minecraft:blindness",seconds:2,amplifier:0,hide_particles:false}, \
                        ], \
                    }, \
                }, \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.assassin.kit3.name",fallback:"III Mercenary"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/assassin/item/kit3/hotbar", \
                offhand:"hc:class/assassin/item/kit3/offhand", \
            }, \
            data_type:"assassin_k3_data", \
            assassin_k3_data:{}, \
        }, \
    ], \
    perks:[ \
        { \
            id:1, \
            name:{translate:"hc.class.assassin.perk1.name",fallback:"I Contract"}, \
            data_type:"assassin_p1_data", \
            assassin_p1_data:{ \
                contract_success_effects_info:{ \
                    suppression_ticks:0, \
                    effects:[ \
                        {effect:"minecraft:strength",seconds:"infinite",amplifier:0,hide_particles:false}, \
                        {effect:"minecraft:instant_health",seconds:1,amplifier:0,hide_particles:false}, \
                    ], \
                }, \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.assassin.perk2.name",fallback:"II Harvesting"}, \
            data_type:"assassin_p2_data", \
            assassin_p2_data:{ \
                enemy_true_health_threshold:3, \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.assassin.perk3.name",fallback:"III Acidity"}, \
            data_type:"assassin_p3_data", \
            assassin_p3_data:{ \
                on_hit_by_owner_armor_toughness:0, \
            }, \
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
            data_type:"support_k1_data", \
            support_k1_data:{}, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.support.kit2.name",fallback:"II Doctor"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/support/item/kit2/hotbar", \
                offhand:"hc:class/support/item/kit2/offhand", \
            }, \
            data_type:"support_k2_data", \
            support_k2_data:{}, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.support.kit3.name",fallback:"II Doctor"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/support/item/kit3/hotbar", \
                offhand:"hc:class/support/item/kit3/offhand", \
            }, \
            data_type:"support_k3_data", \
            support_k3_data:{}, \
        }, \
    ], \
    perks:[ \
        { \
            id:1, \
            name:{translate:"hc.class.support.perk1.name",fallback:"I Overclock"}, \
            data_type:"support_p1_data", \
            support_p1_data:{}, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.support.perk2.name",fallback:"II Personal space"}, \
            data_type:"support_p2_data", \
            support_p2_data:{ \
                on_hit_explosion:{ \
                    radius:3, \
                    delay_ticks:40, \
                    effects_info:{ \
                        suppression_ticks:0, \
                        effects:[ \
                            {effect:"minecraft:blindness",seconds:2,amplifier:0,hide_particles:false}, \
                            {effect:"minecraft:jump_boost",seconds:2,amplifier:0,hide_particles:true}, \
                        ], \
                    }, \
                }, \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.support.perk3.name",fallback:"III Supercharge"}, \
            data_type:"support_p3_data", \
            support_p3_data:{ \
                extra_area_ability_radius:2, \
            }, \
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
            data_type:"recon_k1_data", \
            recon_k1_data:{}, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.recon.kit2.name",fallback:"II Tracker"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/recon/item/kit2/hotbar", \
                offhand:"hc:class/recon/item/kit2/offhand", \
            }, \
            data_type:"recon_k2_data", \
            recon_k2_data:{ \
                flare_arrow:{\
                    max_amount:1, \
                    cooldown_ticks:120, \
                    detection_aabb_size:[1.5, 1.5, 1.5], \
                    explosion:{ \
                        radius:6, \
                        effects_info:{ \
                            suppression_ticks:0, \
                            effects:[ \
                                {effect:"minecraft:blindness",seconds:2,amplifier:0,hide_particles:false}, \
                                {effect:"minecraft:glowing",seconds:5,amplifier:0,hide_particles:false}, \
                            ], \
                        }, \
                    }, \
                }, \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.recon.kit3.name",fallback:"III Anomaly"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/recon/item/kit3/hotbar", \
                offhand:"hc:class/recon/item/kit3/offhand", \
            }, \
            data_type:"recon_k3_data", \
            recon_k3_data:{}, \
        }, \
    ], \
    perks:[ \
        { \
            id:1, \
            name:{translate:"hc.class.recon.perk1.name",fallback:"I Inhibitor"}, \
            data_type:"recon_p1_data", \
            recon_p1_data:{ \
                glowing_max_duration_ticks:5, \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.recon.perk2.name",fallback:"II Assimilation"}, \
            data_type:"recon_p2_data", \
            recon_p2_data:{ \
                on_glowing_enemy_hit_effects_info:{ \
                    suppression_ticks:0, \
                    effects:[\
                        {effect:"minecraft:haste",seconds:3,amplifier:2,hide_particles:false}, \
                    ], \
                }, \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.recon.perk3.name",fallback:"III Animal instinct"}, \
            data_type:"recon_p3_data", \
            recon_p3_data:{ \
                enemy_trace_lifetime_ticks:10, \
            }, \
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
            data_type:"assault_k1_data", \
            assault_k1_data:{}, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.assault.kit2.name",fallback:"II Harpooner"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/assault/item/kit2/hotbar", \
                offhand:"hc:class/assault/item/kit2/offhand", \
            }, \
            data_type:"assault_k2_data", \
            assault_k2_data:{}, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.assault.kit3.name",fallback:"III Commander"}, \
            item_loot_tables:{ \
                hotbar:"hc:class/assault/item/kit3/hotbar", \
                offhand:"hc:class/assault/item/kit3/offhand", \
            }, \
            data_type:"assault_k3_data", \
            assault_k3_data:{}, \
        }, \
    ], \
    perks:[ \
        { \
            id:1, \
            name:{translate:"hc.class.assault.perk1.name",fallback:"I Engineering"}, \
            data_type:"assault_p1_data", \
            assault_p1_data:{ \
                trap_disabling_explosion_radius:6, \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.assault.perk2.name",fallback:"II Adaptable shell"}, \
            data_type:"assault_p2_data", \
            assault_p2_data:{ \
                on_enemy_crowd_controlled:{ \
                    duration_ticks:40, \
                    attributes:[ \
                        {id:"hc:assault_p2_crowd_control_armor",attribute:"minecraft:armor",value:20,operation:"add_value"}, \
                    ], \
                }, \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.assault.perk3.name",fallback:"III Chase"}, \
            data_type:"assault_p3_data", \
            assault_p3_data:{ \
                on_looking_at_enemy_effects_info:{ \
                    suppression_ticks:0, \
                    effects:[ \
                        {effect:"minecraft:speed",seconds:1,amplifier:0,hide_particles:true}, \
                    ], \
                }, \
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
