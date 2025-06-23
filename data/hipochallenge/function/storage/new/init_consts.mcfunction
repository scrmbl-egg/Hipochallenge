# INFO:
# This function is executed every reload, or 'load.mcfunction' call.
# This file is meant to be changed only by the developers, or a user who might
# want to change properties of the game.

# TODO: Complete the list of constants

# reset
data remove storage minecraft:hipochallenge consts

## GAME CONSTANTS

data modify storage minecraft:hipochallenge consts.game set value { \
    map_version: "pre-alpha", \
    team_size:3, \
    necessary_players_for_game:6, \
    match_request_duration_ticks:1200, \
    states:{ \
        not_playing:0b, \
        waiting_for_players:1b, \
        selecting_team:2b, \
        naming_team:3b, \
        selecting_team_color:4b, \
        selecting_class:5b, \
        selecting_level:6b, \
        level_intro:7b, \
        selecting_kit:8b, \
        starting_round:9b, \
        playing:10b, \
        ending_round:11b, \
        ending_match:12b, \
    }, \
    modes:{ \
        casual:{ \
            necessary_wins:5, \
            minimum_win_lead_for_victory:1, \
            round_duration_ticks:2400, \
        }, \
        competitive: { \
            necessary_wins:5, \
            minimum_win_lead_for_victory:2, \
            round_duration_ticks:2400, \
        }, \
    }, \
}

## LIMITS

data modify storage minecraft:hipochallenge consts.limits set value { \
    no_gravity_projectiles_lifetime_ticks:200, \
}

## TEAMS

# neutral
data modify storage minecraft:hipochallenge consts.teams.neutral set value { \
    name_color:"#ffffff", \
    text_color:"black", \
    color_id:0, \
    dust_color:[0.4f,0.4f,0.4f], \
    armor_color:6579300, \
    trim_material:"netherite", \
}

# red
data modify storage minecraft:hipochallenge consts.teams.red set value { \
    name_color:"#ff0000", \
    text_color:"red", \
    color_id:1, \
    dust_color:[1.0f,0.0f,0.0f], \
    armor_color:11546150, \
    trim_material:"redstone", \
}

# yellow
data modify storage minecraft:hipochallenge consts.teams.yellow set value { \
    name_color:"#fffb0a", \
    text_color:"yellow", \
    color_id:2, \
    dust_color:[1.0f,1.0f,0.0f], \
    armor_color:16765471, \
    trim_material:"gold", \
}

# green
data modify storage minecraft:hipochallenge consts.teams.green set value { \
    name_color:"#0eff36", \
    text_color:"green", \
    color_id:3, \
    dust_color:[0.0f,1.0f,0.0f], \
    armor_color:8439583, \
    trim_material:"emerald", \
}

# blue
data modify storage minecraft:hipochallenge consts.teams.blue set value { \
    name_color:"#0400e4", \
    text_color:"blue", \
    color_id:4, \
    dust_color:[0.0f,0.0f,1.0f], \
    armor_color:3949738, \
    trim_material:"lapis", \
}

# purple
data modify storage minecraft:hipochallenge consts.teams.purple set value { \
    name_color:"#ffef0c", \
    text_color:"light_purple", \
    color_id:5, \
    dust_color:[1.0f,0.0f,1.0f], \
    armor_color:13061821, \
    trim_material:"amethyst", \
}

## CLASSES

# tank
data modify storage minecraft:hipochallenge consts.classes.tank set value { \
    name_translation_key: "hc.class.tank", \
    name_fallback:"Tank", \
    dust_color: [0.176f,0.6f,0.392f], \
    attributes:{ \
        max_health:20, \
        armor:20, \
        armor_toughness: 12, \
        scale:1.1, \
        burning_time:1.0, \
        explosion_knockback_resistance:0.0, \
    }, \
    list_info:{ \
        class_color:"#80c3a1", \
        kit_color:"#a6d5bd", \
        perk_color:"#cce7d9", \
    }, \
    kit1:{ \
        name_translation_key:"hc.class.tank.kit1", \
        name_fallback:"I Guardian", \
        horn:{ \
            effects:[ \
                {effect:"absorption",seconds:2,amplifier:1,hide_particles:0b}, \
            ], \
            radius:7.0, \
        }, \
        castling:{cooldown_ticks:400}, \
    }, \
    kit2: { \
        name_translation_key:"hc.class.tank.kit2", \
        name_fallback:"II Triton", \
        horn:{ \
            effects:[ \
                {effect:"slowness",seconds:2,amplifier:0,hide_particles:0b}, \
            ], \
            radius:5.0, \
            recovery_ticks:20, \
        }, \
        trident:{ \
            cooldown_ticks:30, \
        }, \
    }, \
    kit3:{ \
        name_translation_key:"hc.class.tank.kit3", \
        name_fallback:"III Druid", \
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
        name_translation_key:"hc.class.tank.perk1", \
        name_fallback:"I Nutrition", \
        food_item: {initial_cooldown_ticks:1200}, \
    }, \
    perk2:{ \
        name_translation_key:"hc.class.tank.perk2", \
        name_fallback:"II Profound scars", \
        attack_effects:[ \
            {effect:"slowness",seconds:1,amplifier:0,hide_particles:false} \
        ] \
    }, \
    perk3:{ \
        name_translation_key:"hc.class.tank.perk3", \
        name_fallback:"III Inspiration", \
    }, \
}

# marksman
data modify storage minecraft:hipochallenge consts.classes.marksman set value { \
    name_translation_key:"hc.class.marksman", \
    name_fallback:"Marksman", \
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
    kit1:{ \
        name_translation_key:"hc.class.marksman.kit1", \
        name_fallback:"I Archer", \
        projectiles:{ \
            max_amount:6, \
            new_first_cooldown_ticks:60, \
            new_rest_cooldown_ticks:20, \
        }, \
    }, \
    kit2:{ \
        name_translation_key:"hc.class.marksman.kit2", \
        name_fallback:"II Sniper", \
        projectiles:{ \
            max_amount:5, \
            new_first_cooldown_ticks:80, \
            new_rest_cooldown_ticks:30, \
        }, \
    }, \
    kit3:{ \
        name_translation_key:"hc.class.marksman.kit3", \
        name_fallback:"III Gunslinger", \
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
        name_translation_key:"hc.class.marksman.perk1", \
        name_fallback:"I Bullseye", \
        suppression_or_on_air_magic_damage:2, \
    }, \
    perk2:{ \
        name_translation_key:"hc.class.marksman.perk2", \
        name_fallback:"II Lifesaver", \
        max_health_for_effects:8, \
        effects:[ \
            {effect:"absorption",seconds:3,amplifier:1,hide_particles:false}, \
        ], \
    }, \
    perk3:{ \
        name_translation_key:"hc.class.marksman.perk3", \
        name_fallback:"III Big pockets", \
        added_projectiles:3, \
    }, \
}

# assassin
data modify storage minecraft:hipochallenge consts.classes.assassin set value { \
    name_translation_key:"hc.class.assassin", \
    name_fallback:"Assassin", \
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
    kit1:{ \
        name_translation_key:"hc.class.assassin.kit1", \
        name_fallback:"I Duelist", \
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
        name_translation_key:"hc.class.assassin.kit2", \
        name_fallback:"II Phantom", \
    }, \
    kit3:{ \
        name_translation_key:"hc.class.assassin.kit3", \
        name_fallback:"III Mercenary", \
    }, \
    perk1:{ \
        name_translation_key:"hc.class.assassin.perk1", \
        name_fallback:"I Contract", \
    }, \
    perk2:{ \
        name_translation_key:"hc.class.assassin.perk2", \
        name_fallback:"II Harvesting", \
    }, \
    perk3:{ \
        name_translation_key:"hc.class.assassin.perk3", \
        name_fallback:"III Acidity", \
    }, \
}
#data modify storage minecraft:hipochallenge consts.classes.assassin.kit1.parry.interaction.summon_distance set value 0.5
#data modify storage minecraft:hipochallenge consts.classes.assassin.kit1.parry.interaction.global_y_offset set value -0.9
#data modify storage minecraft:hipochallenge consts.classes.assassin.kit1.parry.interaction.height set value 1.25
#data modify storage minecraft:hipochallenge consts.classes.assassin.kit1.parry.interaction.width set value 0.54
#data modify storage minecraft:hipochallenge consts.classes.assassin.kit1.parry.interaction.lifetime_ticks set value 10

# support
data modify storage minecraft:hipochallenge consts.classes.support set value { \
    name_translation_key:"hc.class.support", \
    name_fallback:"Support", \
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
    kit1:{ \
        name_translation_key:"hc.class.support.kit1", \
        name_fallback:"I Trapper", \
    }, \
    kit2:{ \
        name_translation_key:"hc.class.support.kit2", \
        name_fallback:"II Doctor", \
    }, \
    kit3:{ \
        name_translation_key:"hc.class.support.kit3", \
        name_fallback:"III Shaman", \
    }, \
    perk1:{ \
        name_translation_key:"hc.class.support.perk1", \
        name_fallback:"I Overclock", \
    }, \
    perk2:{ \
        name_translation_key:"hc.class.support.perk2", \
        name_fallback:"II Personal space", \
    }, \
    perk3:{ \
        name_translation_key:"hc.class.support.perk3", \
        name_fallback:"III Supercharge", \
    }, \
}

# recon
data modify storage minecraft:hipochallenge consts.classes.recon set value { \
    name_translation_key:"hc.class.recon", \
    name_fallback:"Recon", \
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
    kit1:{ \
        name_translation_key:"hc.class.recon.kit1", \
        name_fallback:"I Spec. ops", \
    }, \
    kit2:{ \
        name_translation_key:"hc.class.recon.kit2", \
        name_fallback:"II Tracker", \
    }, \
    kit3:{ \
        name_translation_key:"hc.class.recon.kit3", \
        name_fallback:"III Anomaly", \
    }, \
    perk1:{ \
        name_translation_key:"hc.class.recon.perk1", \
        name_fallback:"I Inhibitor", \
    }, \
    perk2:{ \
        name_translation_key:"hc.class.recon.perk2", \
        name_fallback:"II Assimilation", \
    }, \
    perk3:{ \
        name_translation_key:"hc.class.recon.perk3", \
        name_fallback:"III Animal instinct", \
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
    name_translation_key:"hc.class.assault", \
    name_fallback:"Recon", \
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
    kit1:{ \
        name_translation_key:"hc.class.assault.kit1", \
        name_fallback:"I Explosives expert", \
    }, \
    kit2:{ \
        name_translation_key:"hc.class.assault.kit2", \
        name_fallback:"II Harpooner", \
    }, \
    kit3:{ \
        name_translation_key:"hc.class.assault.kit3", \
        name_fallback:"III Commander", \
    }, \
    perk1:{ \
        name_translation_key:"hc.class.assault.perk1", \
        name_fallback:"I Engineering", \
    }, \
    perk2:{ \
        name_translation_key:"hc.class.assault.perk2", \
        name_fallback:"II Adaptable shell", \
    }, \
    perk3:{ \
        name_translation_key:"hc.class.assault.perk3", \
        name_fallback:"III Chase", \
    }, \
}

## LEVELS

# callouts

# TODO: add callout objects and lists

## Text components

# TODO: delete or use text components
