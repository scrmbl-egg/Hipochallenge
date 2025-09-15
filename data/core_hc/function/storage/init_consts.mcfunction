#>core_hc:storage/init_consts
#
# This function is executed every reload, or 'load.mcfunction' call.
# This file is meant to be changed only by the developers, or a user who might
# want to change properties of the game.
#
# @returns
#   Result: 1 if all constants are initialised

# TODO: stop using minecraft:hipochallenge namespace
# TODO: Complete the list of constants

function hipochallenge:msg/debug/send_info { \
    text:"\"Initialising datapack constants...\"", \
}

# reset
data remove storage minecraft:hipochallenge consts

## GAME CONSTANTS

data modify storage minecraft:hipochallenge consts.game set value { \
    map_version: "pre-alpha", \
    team_size:3, \
    necessary_players_for_game:6, \
    match_request_duration_ticks:1200, \
    states:{ \
        not_playing:0, \
        waiting_for_players:1, \
        selecting_team:2, \
        naming_team:3, \
        selecting_team_color:4, \
        selecting_class:5, \
        selecting_level:6, \
        level_intro:7, \
        selecting_kit:8, \
        starting_round:9, \
        playing:10, \
        ending_round:11, \
        ending_match:12, \
    }, \
    modes:[ \
        { \
            internal_name:"casual", \
            id:0, \
            name:{translate:"",fallback:"CASUAL"}, \
            necessary_wins:5, \
            minimum_win_lead_for_victory:1, \
            round_duration_ticks:2400, \
        }, \
        { \
            internal_name:"competitive", \
            id:1, \
            name:{translate:"",fallback:"COMPETITIVE"}, \
            necessary_wins:5, \
            minimum_win_lead_for_victory:2, \
            round_duration_ticks:2400, \
        }, \
    ], \
}

## LIMITS

data modify storage minecraft:hipochallenge consts.limits set value { \
    no_gravity_projectiles_lifetime_ticks:200, \
}

## TEAMS

# neutral -> team_presets[0]
data modify storage minecraft:hipochallenge consts.team_presets append value { \
    internal_name:"neutral", \
    id:0, \
    default_name:{translate:"hc.teams.neutral.name",fallback:"NEUTRAL"}, \
    name_color:"#09d8f3", \
    text_color:"white", \
    dust_color:[0.9f,0.9f,0.9f], \
    armor_color:15329769, \
    trim_material:"minecraft:quartz", \
}

# red -> team_presets[1]
data modify storage minecraft:hipochallenge consts.team_presets append value { \
    internal_name:"red", \
    id:1, \
    default_name:{translate:"hc.teams.colors.red",fallback:"RED"}, \
    name_color:"#ff3030", \
    text_color:"red", \
    dust_color:[1.0f,0.0f,0.0f], \
    armor_color:10952471, \
    trim_material:"minecraft:redstone", \
}

# yellow -> team_presets[2]
data modify storage minecraft:hipochallenge consts.team_presets append value { \
    internal_name:"yellow", \
    id:2, \
    default_name:{translate:"hc.teams.colors.yellow",fallback:"YELLOW"}, \
    name_color:"#fffb0a", \
    text_color:"yellow", \
    dust_color:[1.0f,1.0f,0.0f], \
    armor_color:16108323, \
    trim_material:"minecraft:gold", \
}

# green -> team_presets[3]
data modify storage minecraft:hipochallenge consts.team_presets append value { \
    internal_name:"green", \
    id:3, \
    default_name:{translate:"hc.teams.colors.green",fallback:"GREEN"}, \
    name_color:"#2ece49", \
    text_color:"green", \
    dust_color:[0.0f,1.0f,0.0f], \
    armor_color:5162826, \
    trim_material:"minecraft:emerald", \
}

# blue -> team_presets[4]
data modify storage minecraft:hipochallenge consts.team_presets append value { \
    internal_name:"blue", \
    id:4, \
    default_name:{translate:"hc.teams.colors.blue",fallback:"BLUE"}, \
    name_color:"#3f3bff", \
    text_color:"blue", \
    dust_color:[0.0f,0.0f,1.0f], \
    armor_color:1977039, \
    trim_material:"minecraft:lapis", \
}

# purple -> team_presets[5]
data modify storage minecraft:hipochallenge consts.team_presets append value { \
    internal_name:"purple", \
    id:5, \
    default_name:{translate:"hc.teams.colors.purple",fallback:"PURPLE"}, \
    name_color:"#df2fdf", \
    text_color:"light_purple", \
    dust_color:[1.0f,0.0f,1.0f], \
    armor_color:13061821, \
    trim_material:"minecraft:amethyst", \
}

# orange -> team_presets[6]
data modify storage minecraft:hipochallenge consts.team_presets append value { \
    internal_name:"orange", \
    id:6, \
    default_name:{translate:"hc.teams.colors.orange",fallback:"ORANGE"}, \
    name_color:"#ff811a", \
    text_color:"gold", \
    dust_color:[1.0f,0.455f,0.141f], \
    armor_color:16739609, \
    trim_material:"minecraft:resin", \
}

# cyan -> team_presets[7]
data modify storage minecraft:hipochallenge consts.team_presets append value { \
    internal_name:"cyan", \
    id:7, \
    default_name:{translate:"hc.teams.colors.cyan",fallback:"CYAN"}, \
    name_color:"#34d5f1", \
    text_color:"aqua", \
    dust_color:[0.20f,0.83f,1.0f], \
    armor_color:1953486, \
    trim_material:"minecraft:diamond", \
}

## CLASSES

# tank -> classes[0]
data modify storage minecraft:hipochallenge consts.classes append value { \
    internal_name:"tank", \
    id:1, \
    name:{translate:"hc.class.tank",fallback:"Tank"}, \
    dust_color: [0.176f,0.6f,0.392f], \
    attributes:{ \
        max_health:20, \
        armor:20, \
        armor_toughness:12, \
        scale:1.1, \
        burning_time:1.0, \
        explosion_knockback_resistance:0.0, \
    }, \
    list_info:{ \
        class_color:"#80c3a1", \
        kit_color:"#a6d5bd", \
        perk_color:"#cce7d9", \
    }, \
    armor_loot_tables:{ \
        head:"hipochallenge:class/tank/armor/head", \
        chest:"hipochallenge:class/tank/armor/chest", \
        legs:"hipochallenge:class/tank/armor/legs", \
        feet:"hipochallenge:class/tank/armor/feet", \
    }, \
    kits: [ \
        { \
            id:1, \
            name:{translate:"hc.class.tank.kit1",fallback:"I Guardian"}, \
            equip_command:"say tank kit 1 equip command called", \
            data_type:"tank_k1_data", \
            tank_k1_data:{ \
                horn:{ \
                    effects_info:{ \
                        suppression_ticks:0, \
                        effects:[ \
                            {effect:"minecraft:absorption",seconds:2,amplifier:1,hide_particles:"false"}, \
                        ], \
                    }, \
                    radius:7.0, \
                }, \
                castling:{cooldown_ticks:400}, \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.tank.kit2",fallback:"II Triton"}, \
            equip_command:"say tank kit 2 equip command called", \
            data_type:"tank_k2_data", \
            tank_k2_data:{ \
                horn:{ \
                    effects_info:{ \
                        suppression_ticks:0, \
                        effects:[ \
                            {effect:"minecraft:slowness",seconds:2,amplifier:0,hide_particles:"false"}, \
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
            name:{translate:"hc.class.tank.kit3",fallback:"III Druid"}, \
            equip_command:"say tank kit 3 equip command called", \
            data_type:"tank_k3_data", \
            tank_k3_data:{ \
                horn:{ \
                    modifiers:[ \
                        {id:"tank_k3_horn_armor",attribute:"minecraft:armor",value:-6,operation:"add_value"}, \
                    ], \
                    radius:8.0, \
                }, \
                spirit:{ \
                    selection:{ \
                        target_mode:"allies_only", \
                        max_distance:5.0f, \
                        on_selected_command:"say selected!", \
                    }, \
                    buff: { \
                        modifiers:[ \
                            {id:"tank_k3_spirit_buff_armor",attribute:"minecraft:armor",value:6,operation:"add_value"}, \
                        ], \
                        radius:6, \
                    }, \
                    owner_debuff:{ \
                        modifiers:[ \
                            {id:"tank_k3_spirit_debuff_armor",attribute:"minecraft:armor",value:-6,operation:"add_value"}, \
                        ], \
                    }, \
                }, \
                bubble_shield:{ \
                    draw_command:"particle dust_color_transition{from_color:[0.000f,0.800f,1.000f],scale:2,to_color:[0.161f,0.255f,0.271f]} ~ ~ ~ 0 0 0 0 1 force", \
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
            name:{translate:"hc.class.tank.perk1",fallback:"I Nutrition"}, \
            equip_command:"say tank perk 1 equip command called", \
            data_type:"tank_p1_data", \
            tank_p1_data:{ \
                food_item:{give_delay_ticks:1200}, \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.tank.perk2",fallback:"II Profound scars"}, \
            equip_command:"say tank perk 2 equip command called", \
            data_type:"tank_p2_data", \
            tank_p2_data: { \
                attack:{ \
                    effects_info:{ \
                        suppression_ticks:0, \
                        effects:[ \
                            {effect:"minecraft:slowness",seconds:1,amplifier:0,hide_particles:"false"}, \
                        ], \
                    }, \
                }, \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.tank.perk3",fallback:"III Inspiration"}, \
            equip_command:"say tank perk 3 equip command called", \
            data_type:"tank_p3_data", \
            tank_p3_data: { \
                close_ally_buff:{ \
                    radius:9, \
                    attributes:[ \
                        {id:"tank_p3_inspiration_armor",attribute:"minecraft:armor",value:10,operation:"add_value"}, \
                    ], \
                }, \
            }, \
        }, \
    ], \
}

# marksman -> classes[1]
data modify storage minecraft:hipochallenge consts.classes append value { \
    internal_name:"marksman", \
    id:2, \
    name:{translate:"hc.class.marksman",fallback:"Marksman"}, \
    dust_color:[0.788f, 0.541f, 0.11f], \
    attributes:{ \
        max_health:20, \
        armor:12, \
        armor_toughness:0, \
        scale:1, \
        burning_time:1, \
        explosion_knockback_resistance:0.0 \
    }, \
    list_info:{ \
        class_color:"#dfb977", \
        kit_color:"#e9cea0", \
        perk_color:"#f2e3c9", \
    }, \
    armor_loot_tables:{ \
        head:"hipochallenge:class/marksman/armor/head", \
        chest:"hipochallenge:class/marksman/armor/chest", \
        legs:"hipochallenge:class/marksman/armor/legs", \
        feet:"hipochallenge:class/marksman/armor/feet", \
    }, \
    kits:[ \
        { \
            id:1, \
            name:{translate:"hc.class.marksman.kit1",fallback:"I Archer"}, \
            equip_command:"say marksman kit 1 equip command called", \
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
            name:{translate:"hc.class.marksman.kit2",fallback:"II Sniper"}, \
            equip_command:"say marksman kit 2 equip command called", \
            data_type:"marksman_k2_data", \
            marksman_k2_data:{ \
                arrows:{ \
                    max_amount:5, \
                    new_first_cooldown_ticks:80, \
                    new_rest_cooldown_ticks:30, \
                }, \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.marksman.kit3",fallback:"III Gunslinger"}, \
            equip_command:"say marksman kit 3 equip command called", \
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
            name:{translate:"hc.class.marksman.perk1",fallback:"I Bullseye"}, \
            equip_command:"say marksman perk 1 equip command called", \
            data_type:"marksman_p1_data", \
            marksman_p1_data: { \
                suppression_or_on_air_magic_damage:2, \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.marksman.perk2",fallback:"II Lifesaver"}, \
            equip_command:"say marksman perk 2 equip command called", \
            data_type:"marksman_p2_data", \
            marksman_p2_data:{ \
                health_threshold:8, \
                effects_info:{ \
                    suppression_ticks:0, \
                    effects:[ \
                        {effect:"minecraft:absorption",seconds:3,amplifier:1,hide_particles:"false"}, \
                    ], \
                }, \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.marksman.perk3",fallback:"III Big pockets"}, \
            equip_command:"say marksman perk 3 equip command called", \
            data_type:"marksman_p3_data", \
            marksman_p3_data:{ \
                added_projectiles:3, \
            }, \
        }, \
    ], \
}

# assassin -> classes[2]
data modify storage minecraft:hipochallenge consts.classes append value { \
    internal_name:"assassin", \
    id:3, \
    name:{translate:"hc.class.assassin",fallback:"Assassin"}, \
    dust_color:[0.173f, 0.482f, 0.824f], \
    attributes:{ \
        max_health:20, \
        armor:16, \
        armor_toughness:4, \
        scale:1, \
        burning_time:1, \
        explosion_knockback_resistance:0 \
    }, \
    list_info:{ \
        class_color:"#80b0e4", \
        kit_color:"#a6c8ec", \
        perk_color:"#ccdff4", \
    }, \
    armor_loot_tables: { \
        head:"hipochallenge:class/assassin/armor/head", \
        chest:"hipochallenge:class/assassin/armor/chest", \
        legs:"hipochallenge:class/assassin/armor/legs", \
        feet:"hipochallenge:class/assassin/armor/feet", \
    }, \
    kits:[ \
        { \
            id:1, \
            name:{translate:"hc.class.assassin.kit1",fallback:"I Duelist"}, \
            equip_command:"say assassin kit 1 equip command called", \
            data_type:"assassin_k1_data", \
            assassin_k1_data:{ \
                parry:{ \
                    on_owner_when_success:{ \
                        modifiers: [], \
                    }, \
                    on_owner_when_fail:{ \
                        modifiers: [ \
                            {id:"assassin_k1_owner_failed_parry_entity_interaction_range",attribute:"minecraft:entity_interaction_range",value:-3,operation:"add_value"}, \
                            {id:"assassin_k1_owner_failed_parry_attack_speed",attribute:"minecraft:attack_speed",value:-1.1,operation:"add_value"}, \
                        ], \
                    }, \
                    on_enemy_when_parried:{ \
                        modifiers: [], \
                        effects_info: { \
                            suppression_ticks:0, \
                            effects:[], \
                        }, \
                    }, \
                }, \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.assassin.kit2",fallback:"II Phantom"}, \
            equip_command:"say assassin kit 2 equip command called", \
            data_type:"assassin_k2_data", \
            assassin_k2_data:{ \
                stun_mechanism:{ \
                    radius:3.0, \
                    effects_info:{ \
                        suppression_ticks:40, \
                        effects:[ \
                            {effect:"minecraft:slowness",seconds:2,amplifier:2,hide_particles:"false"}, \
                            {effect:"minecraft:blindness",seconds:2,amplifier:0,hide_particles:"false"}, \
                        ], \
                    }, \
                }, \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.assassin.kit3",fallback:"III Mercenary"}, \
            equip_command:"say assassin kit 3 equip command called", \
            data_type:"assassin_k3_data", \
            assassin_k3_data:{}, \
        }, \
    ], \
    perks:[ \
        { \
            id:1, \
            name:{translate:"hc.class.assassin.perk1",fallback:"I Contract"}, \
            equip_command:"say assassin perk 1 equip command called", \
            data_type:"assassin_p1_data", \
            assassin_p1_data:{ \
                contract_success_effects_info:{ \
                    suppression_ticks:0, \
                    effects:[ \
                        {effect:"minecraft:strength",seconds:"infinite",amplifier:0,hide_particles:"false"}, \
                        {effect:"minecraft:instant_health",seconds:1,amplifier:0,hide_particles:"false"}, \
                    ], \
                }, \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.assassin.perk2",fallback:"II Harvesting"}, \
            equip_command:"say assassin perk 2 equip command called", \
            data_type:"assassin_p2_data", \
            assassin_p2_data:{ \
                enemy_true_health_threshold:3, \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.assassin.perk3",fallback:"III Acidity"}, \
            equip_command:"say assassin perk 3 equip command called", \
            data_type:"assassin_p3_data", \
            assassin_p3_data:{ \
                on_hit_by_owner_armor_toughness:0, \
            }, \
        }, \
    ], \
}

# support -> classes[3]
data modify storage minecraft:hipochallenge consts.classes append value { \
    internal_name:"support", \
    id:4, \
    name:{translate:"hc.class.support",fallback:"Support"}, \
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
        class_color:"#eaac7c", \
        kit_color:"#f0c5a3", \
        perk_color:"#f7decb", \
    }, \
    armor_loot_tables:{ \
        head:"hipochallenge:class/support/armor/head", \
        chest:"hipochallenge:class/support/armor/chest", \
        legs:"hipochallenge:class/support/armor/legs", \
        feet:"hipochallenge:class/support/armor/feet", \
    }, \
    kits:[ \
        { \
            id:1, \
            name:{translate:"hc.class.support.kit1",fallback:"I Trapper"}, \
            equip_command:"say support kit 1 equip command called", \
            data_type:"support_k1_data", \
            support_k1_data:{}, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.support.kit2",fallback:"II Doctor"}, \
            equip_command:"say support kit 2 equip command called", \
            data_type:"support_k2_data", \
            support_k2_data:{}, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.support.kit3",fallback:"II Doctor"}, \
            equip_command:"say support kit 3 equip command called", \
            data_type:"support_k3_data", \
            support_k3_data:{}, \
        }, \
    ], \
    perks:[ \
        { \
            id:1, \
            name:{translate:"hc.class.support.perk1",fallback:"I Overclock"}, \
            equip_command:"say support perk 1 equip command called", \
            data_type:"support_p1_data", \
            support_p1_data: { \
                cooldown_multiplier:0.75, \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.support.perk2",fallback:"II Personal space"}, \
            equip_command:"say support perk 2 equip command called", \
            data_type:"support_p2_data", \
            support_p2_data: { \
                on_hit_explosion:{ \
                    radius:3, \
                    delay_ticks:40, \
                    effects_info:{ \
                        suppression_ticks:0, \
                        effects:[ \
                            {effect:"minecraft:blindness",seconds:2,amplifier:0,hide_particles:"false"}, \
                            {effect:"minecraft:jump_boost",seconds:2,amplifier:0,hide_particles:"true"}, \
                        ], \
                    }, \
                }, \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.support.perk3",fallback:"III Supercharge"}, \
            equip_command:"say support perk 3 equip command called", \
            data_type:"support_p3_data", \
            support_p3_data: { \
                extra_area_ability_radius:2, \
            }, \
        }, \
    ], \
}

# recon -> classes[4]
data modify storage minecraft:hipochallenge consts.classes append value { \
    internal_name:"recon", \
    id:5, \
    name:{translate:"hc.class.recon",fallback:"Recon"}, \
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
        class_color:"#b99dda", \
        kit_color:"#cebae5", \
        perk_color:"#e3d8f0", \
    }, \
    armor_loot_tables:{ \
        head:"hipochallenge:class/recon/armor/head", \
        chest:"hipochallenge:class/recon/armor/chest", \
        legs:"hipochallenge:class/recon/armor/legs", \
        feet:"hipochallenge:class/recon/armor/feet", \
    }, \
    kits:[ \
        { \
            id:1, \
            name:{translate:"hc.class.recon.kit1",fallback:"I Spec. ops"}, \
            equip_command:"say recon kit 1 equip command called", \
            data_type:"recon_k1_data", \
            recon_k1_data: {}, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.recon.kit2",fallback:"II Tracker"}, \
            equip_command:"say recon kit 2 equip command called", \
            data_type:"recon_k2_data", \
            recon_k2_data: { \
                flare_arrow:{\
                    max_amount:1, \
                    cooldown_ticks:120, \
                    detection_aabb_size:[2.2, 2.2, 2.2], \
                    explosion:{ \
                        radius:6, \
                        effects_info:{ \
                            suppression_ticks:0, \
                            effects:[ \
                                {effect:"minecraft:blindness",seconds:2,amplifier:0,hide_particles:"false"}, \
                                {effect:"minecraft:glowing",seconds:5,amplifier:0,hide_particles:"false"}, \
                            ], \
                        }, \
                    }, \
                }, \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.recon.kit3",fallback:"III Anomaly"}, \
            equip_command:"say recon kit 3 equip command called", \
            data_type:"recon_k3_data", \
            recon_k3_data: {}, \
        }, \
    ], \
    perks:[ \
        { \
            id:1, \
            name:{translate:"hc.class.recon.perk1",fallback:"I Inhibitor"}, \
            equip_command:"say recon perk 1 equip command called", \
            data_type:"recon_p1_data", \
            recon_p1_data: { \
                glowing_max_duration_ticks:5, \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.recon.perk2",fallback:"II Assimilation"}, \
            equip_command:"say recon perk 2 equip command called", \
            data_type:"recon_p2_data", \
            recon_p2_data: { \
                on_glowing_enemy_hit_effects_info:{ \
                    suppression_ticks:0, \
                    effects:[\
                        {effect:"minecraft:haste",seconds:3,amplifier:2,hide_particles:"false"}, \
                    ], \
                }, \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.recon.perk3",fallback:"III Animal instinct"}, \
            equip_command:"say recon perk 3 equip command called", \
            data_type:"recon_p3_data", \
            recon_p3_data: { \
                enemy_trace_lifetime_ticks:10, \
            }, \
        }, \
    ], \
}

#data modify storage minecraft:hipochallenge consts.classes.recon.kit2.max_flare_arrow_amount set value 1
#data modify storage minecraft:hipochallenge consts.classes.recon.kit2.new_flare_arrow_first_cooldown_ticks set value 120
#data modify storage minecraft:hipochallenge consts.classes.recon.kit2.new_flare_arrow_rest_cooldown_ticks set value -1
#data modify storage minecraft:hipochallenge consts.classes.recon.kit2.flare_arrow.detection_dx set value 2.2
#data modify storage minecraft:hipochallenge consts.classes.recon.kit2.flare_arrow.detection_dy set value 2.2
#data modify storage minecraft:hipochallenge consts.classes.recon.kit2.flare_arrow.detection_dz set value 2.2
#data modify storage minecraft:hipochallenge consts.classes.recon.kit2.flare_arrow.explosion_range set value 6
#data modify storage minecraft:hipochallenge consts.classes.recon.kit2.flare_arrow.explosion_effects set value [{id:"glowing",duration_seconds:5,amplifier:0,hide_particles:false},{id:"blindness",duration_seconds:2,amplifier:0,hide_particles:false}]

# assault -> classes[5]
data modify storage minecraft:hipochallenge consts.classes append value { \
    internal_name:"assault", \
    id:6, \
    name:{translate:"hc.class.assault",fallback:"Assault"}, \
    dust_color:[0.803f,0.286f,0.270f], \
    attributes:{ \
        max_health:20, \
        armor:12, \
        armor_toughness:50, \
        scale:1, \
        burning_time:1, \
        explosion_knockback_resistance:0, \
    }, \
    list_info:{ \
        class_color:"#dc928e", \
        kit_color:"#dc928e", \
        perk_color:"#dc928e", \
    }, \
    armor_loot_tables:{ \
        head:"hipochallenge:class/assault/armor/head", \
        chest:"hipochallenge:class/assault/armor/chest", \
        legs:"hipochallenge:class/assault/armor/legs", \
        feet:"hipochallenge:class/assault/armor/feet", \
    }, \
    kits:[ \
        { \
            id:1, \
            name:{translate:"hc.class.assault.kit1",fallback:"I Explosives expert"}, \
            equip_command:"say assault kit 1 equip command called", \
            data_type:"assault_k1_data", \
            assault_k1_data:{}, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.assault.kit2",fallback:"II Harpooner"}, \
            equip_command:"say assault kit 2 equip command called", \
            data_type:"assault_k2_data", \
            assault_k2_data:{}, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.assault.kit3",fallback:"III Commander"}, \
            equip_command:"say assault kit 3 equip command called", \
            data_type:"assault_k3_data", \
            assault_k3_data:{}, \
        }, \
    ], \
    perks:[ \
        { \
            id:1, \
            name:{translate:"hc.class.assault.perk1",fallback:"I Engineering"}, \
            equip_command:"say assault perk 1 equip command called", \
            data_type:"assault_p1_data", \
            assault_p1_data: { \
                trap_disabling_explosion_radius:6, \
            }, \
        }, \
        { \
            id:2, \
            name:{translate:"hc.class.assault.perk2",fallback:"II Adaptable shell"}, \
            equip_command:"say assault perk 2 equip command called", \
            data_type:"assault_p2_data", \
            assault_p2_data: { \
                on_enemy_crowd_controlled:{ \
                    duration_ticks:40, \
                    attributes:[ \
                        {id:"assault_p2_crowd_control_armor",attribute:"minecraft:armor",value:20,operation:"add_value"}, \
                    ], \
                }, \
            }, \
        }, \
        { \
            id:3, \
            name:{translate:"hc.class.assault.perk3",fallback:"III Chase"}, \
            equip_command:"say assault perk 3 equip command called", \
            data_type:"assault_p3_data", \
            assault_p3_data: { \
                on_looking_at_enemy_effects_info:{ \
                    suppression_ticks:0, \
                    effects:[ \
                        {effect:"minecraft:speed",seconds:1,amplifier:0,hide_particles:"true"}, \
                    ], \
                }, \
            }, \
        }, \
    ], \
}

## LEVELS

# callouts

# TODO: add callout objects and lists

## EXTENSION CONSTANTS SETUP

## POST-SETUP CALCULATIONS
# the constants that are calculated here are mainly used for predicates that
# the perform checks of constant values.

# class count
execute store result storage minecraft:hipochallenge consts.class_count \
    int 1 \
    run \
    data get storage minecraft:hipochallenge consts.classes

# team preset count
execute store result storage minecraft:hipochallenge consts.team_preset_count \
    int 1 \
    run \
    data get storage minecraft:hipochallenge consts.team_presets


## __KEEP AT BOTTOM OF FILE__
# return 1 for success
return 1
