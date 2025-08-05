#>core_hc:storage/init_consts
#
# This function is executed every reload, or 'load.mcfunction' call.
# This file is meant to be changed only by the developers, or a user who might
# want to change properties of the game.

# TODO: stop using minecraft:hipochallenge namespace
# TODO: Complete the list of constants

function hipochallenge:msg/debug/send_info \
    {text:"\"Initialising datapack constants...\""}

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
    dust_color:[0.4f,0.4f,0.4f], \
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
    name_color:"#39ff5a", \
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
    name_color:"#ad06ad", \
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
    name_color:"#f74e00", \
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

# tank
data modify storage minecraft:hipochallenge consts.classes.tank set value { \
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
    equip_armor_command:"function hipochallenge:equipment/armor/equip_tank_armor", \
    kit1:{ \
        name:{translate:"hc.class.tank.kit1",fallback:"I Guardian"}, \
        equip_command:"say tank kit 1 equip command called", \
        horn:{ \
            effects:[ \
                {effect:"absorption",seconds:2,amplifier:1,hide_particles:"false"}, \
            ], \
            radius:7.0, \
        }, \
        castling:{cooldown_ticks:400}, \
    }, \
    kit2: { \
        name:{translate:"hc.class.tank.kit2",fallback:"II Triton"}, \
        equip_command:"say tank kit 2 equip command called", \
        horn:{ \
            effects:[ \
                {effect:"slowness",seconds:2,amplifier:0,hide_particles:"false"}, \
            ], \
            radius:5.0, \
            recovery_ticks:20, \
        }, \
        trident:{ \
            cooldown_ticks:30, \
        }, \
    }, \
    kit3:{ \
        name:{translate:"hc.class.tank.kit3",fallback:"III Druid"}, \
        equip_command:"say tank kit 3 equip command called", \
        horn:{ \
            modifiers:[ \
                {id:"tank_k3_horn_armor",attribute:"armor",value:-6,operation:"add_value"}, \
            ], \
            radius:8.0, \
        }, \
        spirit:{ \
            selection:{forward_distance:5.0,sphere_radius:5.0}, \
            buff: { \
                modifiers:[ \
                    {id:"tank_k3_spirit_buff_armor",attribute:"armor",value:6,operation:"add_value"}, \
                ], \
                radius:6, \
            }, \
            owner_debuff:{ \
                modifiers:[ \
                    {id:"tank_k3_spirit_debuff_armor",attribute:"armor",value:-6,operation:"add_value"}, \
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
    perk1:{ \
        name:{translate:"hc.class.tank.perk1",fallback:"I Nutrition"}, \
        equip_command:"say tank perk 1 equip command called", \
        food_item: {initial_cooldown_ticks:1200}, \
    }, \
    perk2:{ \
        name:{translate:"hc.class.tank.perk2",fallback:"II Profound scars"}, \
        equip_command:"say tank perk 2 equip command called", \
        attack_effects:[ \
            {effect:"slowness",seconds:1,amplifier:0,hide_particles:"false"} \
        ] \
    }, \
    perk3:{ \
        name:{translate:"hc.class.tank.perk3",fallback:"III Inspiration"}, \
        equip_command:"say tank perk 3 equip command called", \
    }, \
}

# marksman
data modify storage minecraft:hipochallenge consts.classes.marksman set value { \
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
    equip_armor_command:"function hipochallenge:equipment/armor/equip_marksman_armor", \
    kit1:{ \
        name:{translate:"hc.class.marksman.kit1",fallback:"I Archer"}, \
        equip_command:"say marksman kit 1 equip command called", \
        projectiles:{ \
            max_amount:6, \
            new_first_cooldown_ticks:60, \
            new_rest_cooldown_ticks:20, \
        }, \
    }, \
    kit2:{ \
        name:{translate:"hc.class.marksman.kit2",fallback:"II Sniper"}, \
        equip_command:"say marksman kit 2 equip command called", \
        projectiles:{ \
            max_amount:5, \
            new_first_cooldown_ticks:80, \
            new_rest_cooldown_ticks:30, \
        }, \
    }, \
    kit3:{ \
        name:{translate:"hc.class.marksman.kit3",fallback:"III Gunslinger"}, \
        equip_command:"say marksman kit 3 equip command called", \
        projectiles:{ \
            max_amount:6, \
            new_first_cooldown_ticks:80, \
            new_rest_cooldown_ticks:40, \
        }, \
        revolver:{ \
            max_loaded_projectile_amount:6, \
            recoil_pitch_rotation:-20, \
            per_shot_cooldown_ticks:10, \
        }, \
    }, \
    perk1:{ \
        name:{translate:"hc.class.marksman.perk1",fallback:"I Bullseye"}, \
        equip_command:"say marksman perk 1 equip command called", \
        suppression_or_on_air_magic_damage:2, \
    }, \
    perk2:{ \
        name:{translate:"hc.class.marksman.perk2",fallback:"II Lifesaver"}, \
        equip_command:"say marksman perk 2 equip command called", \
        max_health_for_effects:8, \
        effects:[ \
            {effect:"absorption",seconds:3,amplifier:1,hide_particles:"false"}, \
        ], \
    }, \
    perk3:{ \
        name:{translate:"hc.class.marksman.perk3",fallback:"III Big pockets"}, \
        equip_command:"say marksman perk 3 equip command called", \
        added_projectiles:3, \
    }, \
}

# assassin
data modify storage minecraft:hipochallenge consts.classes.assassin set value { \
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
    equip_armor_command:"function hipochallenge:equipment/armor/equip_assassin_armor", \
    kit1:{ \
        name:{translate:"hc.class.assassin.kit1",fallback:"I Duelist"}, \
        equip_command:"say assassin kit 1 equip command called", \
        parry:{ \
            on_owner_when_success:{ \
                modifiers: [], \
            }, \
            on_owner_when_fail:{ \
                modifiers: [ \
                    {id:"assassin_k1_owner_failed_parry_entity_interaction_range",attribute:"entity_interaction_range",value:-3,operation:"add_value"}, \
                    {id:"assassin_k1_owner_failed_parry_attack_speed",attribute:"attack_speed",value:-1.1,operation:"add_value"}, \
                ], \
            }, \
            on_enemy_when_parried:{ \
                modifiers: [], \
                effects: [], \
            }, \
        }, \
    }, \
    kit2:{ \
        name:{translate:"hc.class.assassin.kit2",fallback:"II Phantom"}, \
        equip_command:"say assassin kit 2 equip command called", \
    }, \
    kit3:{ \
        name:{translate:"hc.class.assassin.kit3",fallback:"III Mercenary"}, \
        equip_command:"say assassin kit 3 equip command called", \
    }, \
    perk1:{ \
        name:{translate:"hc.class.assassin.perk1",fallback:"I Contract"}, \
        equip_command:"say assassin perk 1 equip command called", \
    }, \
    perk2:{ \
        name:{translate:"hc.class.assassin.perk2",fallback:"II Harvesting"}, \
        equip_command:"say assassin perk 2 equip command called", \
    }, \
    perk3:{ \
        name:{translate:"hc.class.assassin.perk3",fallback:"III Acidity"}, \
        equip_command:"say assassin perk 3 equip command called", \
    }, \
}
#data modify storage minecraft:hipochallenge consts.classes.assassin.kit1.parry.interaction.summon_distance set value 0.5
#data modify storage minecraft:hipochallenge consts.classes.assassin.kit1.parry.interaction.global_y_offset set value -0.9
#data modify storage minecraft:hipochallenge consts.classes.assassin.kit1.parry.interaction.height set value 1.25
#data modify storage minecraft:hipochallenge consts.classes.assassin.kit1.parry.interaction.width set value 0.54
#data modify storage minecraft:hipochallenge consts.classes.assassin.kit1.parry.interaction.lifetime_ticks set value 10

# support
data modify storage minecraft:hipochallenge consts.classes.support set value { \
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
    equip_armor_command:"function hipochallenge:equipment/armor/equip_support_armor", \
    kit1:{ \
        name:{translate:"hc.class.support.kit1",fallback:"I Trapper"}, \
        equip_command:"say support kit 1 equip command called", \
    }, \
    kit2:{ \
        name:{translate:"hc.class.assassin.kit2",fallback:"II Doctor"}, \
        equip_command:"say support kit 2 equip command called", \
    }, \
    kit3:{ \
        name:{translate:"hc.class.assassin.kit3",fallback:"III Shaman"}, \
        equip_command:"say support kit 3 equip command called", \
    }, \
    perk1:{ \
        name:{translate:"hc.class.assassin.perk1",fallback:"I Overclock"}, \
        equip_command:"say support perk 1 equip command called", \
    }, \
    perk2:{ \
        name:{translate:"hc.class.assassin.perk2",fallback:"II Personal space"}, \
        equip_command:"say support perk 2 equip command called", \
    }, \
    perk3:{ \
        name:{translate:"hc.class.assassin.perk3",fallback:"III Supercharge"}, \
        equip_command:"say support perk 3 equip command called", \
    }, \
}

# recon
data modify storage minecraft:hipochallenge consts.classes.recon set value { \
    internal_name:"recon", \
    id:5, \
    name:{translate:"hc.class.recon",fallback:"Recon"}, \
    dust_color:[0.863f, 0.455f, 0.141f], \
    attributes:{ \
        max_health:20, \
        armor:16, \
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
    equip_armor_command:"function hipochallenge:equipment/armor/equip_recon_armor", \
    kit1:{ \
        name:{translate:"hc.class.recon.kit1",fallback:"I Spec. ops"}, \
        equip_command:"say recon kit 1 equip command called", \
    }, \
    kit2:{ \
        name:{translate:"hc.class.recon.kit2",fallback:"II Tracker"}, \
        equip_command:"say recon kit 2 equip command called", \
    }, \
    kit3:{ \
        name:{translate:"hc.class.recon.kit3",fallback:"III Anomaly"}, \
        equip_command:"say recon kit 3 equip command called", \
    }, \
    perk1:{ \
        name:{translate:"hc.class.recon.perk1",fallback:"I Inhibitor"}, \
        equip_command:"say recon perk 1 equip command called", \
    }, \
    perk2:{ \
        name:{translate:"hc.class.recon.perk2",fallback:"II Assimilation"}, \
        equip_command:"say recon perk 2 equip command called", \
    }, \
    perk3:{ \
        name:{translate:"hc.class.recon.perk3",fallback:"III Animal instinct"}, \
        equip_command:"say recon perk 3 equip command called", \
    }, \
}

#data modify storage minecraft:hipochallenge consts.classes.recon.kit2.max_flare_arrow_amount set value 1
#data modify storage minecraft:hipochallenge consts.classes.recon.kit2.new_flare_arrow_first_cooldown_ticks set value 120
#data modify storage minecraft:hipochallenge consts.classes.recon.kit2.new_flare_arrow_rest_cooldown_ticks set value -1
#data modify storage minecraft:hipochallenge consts.classes.recon.kit2.flare_arrow.detection_dx set value 2.2
#data modify storage minecraft:hipochallenge consts.classes.recon.kit2.flare_arrow.detection_dy set value 2.2
#data modify storage minecraft:hipochallenge consts.classes.recon.kit2.flare_arrow.detection_dz set value 2.2
#data modify storage minecraft:hipochallenge consts.classes.recon.kit2.flare_arrow.explosion_range set value 6
#data modify storage minecraft:hipochallenge consts.classes.recon.kit2.flare_arrow.explosion_effects set value [{id:"glowing",duration_seconds:5,amplifier:0,hide_particles:false},{id:"blindness",duration_seconds:2,amplifier:0,hide_particles:false}]

# assault
data modify storage minecraft:hipochallenge consts.classes.assault set value { \
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
    equip_armor_command:"function hipochallenge:equipment/armor/equip_assault_armor", \
    kit1:{ \
        name:{translate:"hc.class.assault.kit1",fallback:"I Explosives expert"}, \
        equip_command:"say assault kit 1 equip command called", \
    }, \
    kit2:{ \
        name:{translate:"hc.class.assault.kit2",fallback:"II Harpooner"}, \
        equip_command:"say assault kit 2 equip command called", \
    }, \
    kit3:{ \
        name:{translate:"hc.class.assault.kit3",fallback:"III Commander"}, \
        equip_command:"say assault kit 3 equip command called", \
    }, \
    perk1:{ \
        name:{translate:"hc.class.assault.perk1",fallback:"I Engineering"}, \
        equip_command:"say assault perk 1 equip command called", \
    }, \
    perk2:{ \
        name:{translate:"hc.class.assault.perk2",fallback:"II Adaptable shell"}, \
        equip_command:"say assault perk 2 equip command called", \
    }, \
    perk3:{ \
        name:{translate:"hc.class.assault.perk3",fallback:"III Chase"}, \
        equip_command:"say assault perk 3 equip command called", \
    }, \
}

## LEVELS

# callouts

# TODO: add callout objects and lists

## Text components

# TODO: delete or use text components
