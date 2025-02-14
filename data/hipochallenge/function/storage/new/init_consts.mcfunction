# INFO:
# This function is executed every reload, or 'load.mcfunction' call. 
# This file is meant to be changed only by the developers, or a user who might
# want to change properties of the game.

# TODO: Complete the list of constants

# reset
data remove storage minecraft:hipochallenge consts

## GAME CONSTANTS

data modify storage minecraft:hipochallenge consts.game.map_version set value "pre-alpha"

data modify storage minecraft:hipochallenge consts.game.team_size set value 3
data modify storage minecraft:hipochallenge consts.game.necessary_players_for_game set value 6
data modify storage minecraft:hipochallenge consts.game.round_duration_ticks set value 2400
data modify storage minecraft:hipochallenge consts.game.win_rounds set value 5
data modify storage minecraft:hipochallenge consts.game.match_request_duration_ticks set value 1200

# game states
data modify storage minecraft:hipochallenge consts.game.states.not_playing set value 0
data modify storage minecraft:hipochallenge consts.game.states.waiting_for_players set value 1
data modify storage minecraft:hipochallenge consts.game.states.team_selection set value 2
data modify storage minecraft:hipochallenge consts.game.states.team_naming set value 3
data modify storage minecraft:hipochallenge consts.game.states.team_color_selection set value 4
data modify storage minecraft:hipochallenge consts.game.states.class_selection set value 5
data modify storage minecraft:hipochallenge consts.game.states.map_selection set value 6
data modify storage minecraft:hipochallenge consts.game.states.map_intro set value 7
data modify storage minecraft:hipochallenge consts.game.states.kit_selection set value 8
data modify storage minecraft:hipochallenge consts.game.states.round_start set value 9
data modify storage minecraft:hipochallenge consts.game.states.ongoing_round set value 10
data modify storage minecraft:hipochallenge consts.game.states.round_end set value 11
data modify storage minecraft:hipochallenge consts.game.states.game_end set value 12

## LIMITS

data modify storage minecraft:hipochallenge consts.limits.no_gravity_projectiles_lifetime_ticks set value 200

## TEAMS

data modify storage minecraft:hipochallenge consts.teams.team1.default_name set value "Team 1"
data modify storage minecraft:hipochallenge consts.teams.team2.default_name set value "Team 2"

# neutral
    data modify storage minecraft:hipochallenge consts.teams.neutral.color_number set value -1
    data modify storage minecraft:hipochallenge consts.teams.neutral.dust_color set value [0.400,0.400,0.400]
    data modify storage minecraft:hipochallenge consts.teams.neutral.text_color set value "white"
    data modify storage minecraft:hipochallenge consts.teams.neutral.armor_color set value 6579300
    data modify storage minecraft:hipochallenge consts.teams.neutral.trim_material set value "netherite"

# red
    data modify storage minecraft:hipochallenge consts.teams.red.color_number set value 1
    data modify storage minecraft:hipochallenge consts.teams.red.dust_color set value [1.000,0.000,0.000]
    data modify storage minecraft:hipochallenge consts.teams.red.text_color set value "red"
    data modify storage minecraft:hipochallenge consts.teams.red.armor_color set value 11546150
    data modify storage minecraft:hipochallenge consts.teams.red.trim_material set value "redstone"

# yellow
    data modify storage minecraft:hipochallenge consts.teams.yellow.color_number set value 2
    data modify storage minecraft:hipochallenge consts.teams.yellow.dust_color set value [1.000,1.000,0.000]
    data modify storage minecraft:hipochallenge consts.teams.yellow.text_color set value "yellow"
    data modify storage minecraft:hipochallenge consts.teams.yellow.armor_color set value 16765471
    data modify storage minecraft:hipochallenge consts.teams.yellow.trim_material set value "gold"

# green
    data modify storage minecraft:hipochallenge consts.teams.green.color_number set value 3
    data modify storage minecraft:hipochallenge consts.teams.green.dust_color set value [0.000,1.000,0.000]
    data modify storage minecraft:hipochallenge consts.teams.green.text_color set value "green"
    data modify storage minecraft:hipochallenge consts.teams.green.armor_color set value 8439583
    data modify storage minecraft:hipochallenge consts.teams.green.trim_material set value "emerald"

# blue
    data modify storage minecraft:hipochallenge consts.teams.blue.color_number set value 4
    data modify storage minecraft:hipochallenge consts.teams.blue.dust_color set value [0.000,0.000,1.000]
    data modify storage minecraft:hipochallenge consts.teams.blue.text_color set value "blue"
    data modify storage minecraft:hipochallenge consts.teams.blue.armor_color set value 3949738
    data modify storage minecraft:hipochallenge consts.teams.blue.trim_material set value "lapis"

# purple
    data modify storage minecraft:hipochallenge consts.teams.purple.color_number set value 5
    data modify storage minecraft:hipochallenge consts.teams.purple.dust_color set value [1.000,0.000,1.000]
    data modify storage minecraft:hipochallenge consts.teams.purple.text_color set value "light_purple"
    data modify storage minecraft:hipochallenge consts.teams.purple.armor_color set value 13061821
    data modify storage minecraft:hipochallenge consts.teams.purple.trim_material set value "amethyst"
#

## CLASSES

# tank
    data modify storage minecraft:hipochallenge consts.classes.tank.name_translation_key set value "hc.class.tank"
    
    data modify storage minecraft:hipochallenge consts.classes.tank.dust_color set value [0.176,0.6,0.392]
    
    data modify storage minecraft:hipochallenge consts.classes.tank.attributes.max_health set value 20
    data modify storage minecraft:hipochallenge consts.classes.tank.attributes.armor set value 20
    data modify storage minecraft:hipochallenge consts.classes.tank.attributes.armor_toughness set value 12
    data modify storage minecraft:hipochallenge consts.classes.tank.attributes.scale set value 1.1
    data modify storage minecraft:hipochallenge consts.classes.tank.attributes.burning_time set value 1
    data modify storage minecraft:hipochallenge consts.classes.tank.attributes.explosion_knockback_resistance set value 0
    
    data modify storage minecraft:hipochallenge consts.classes.tank.list_info.class_color set value "#80c3a1"
    data modify storage minecraft:hipochallenge consts.classes.tank.list_info.kit_color set value "#a6d5bd"
    data modify storage minecraft:hipochallenge consts.classes.tank.list_info.perk_color set value "#cce7d9"
    
    # kit 1
        data modify storage minecraft:hipochallenge consts.classes.tank.kit1.name_translation_key set value "hc.class.tank.kit1"

        data modify storage minecraft:hipochallenge consts.classes.tank.kit1.horn.effects set value [{id:"absorption",duration_seconds:3,amplifier:1,hide_particles:false}]
        data modify storage minecraft:hipochallenge consts.classes.tank.kit1.horn.radius set value 7

        data modify storage minecraft:hipochallenge consts.classes.tank.kit1.castling.cooldown_ticks set value 400
    # kit 2
        data modify storage minecraft:hipochallenge consts.classes.tank.kit2.name_translation_key set value "hc.class.tank.kit2"

        data modify storage minecraft:hipochallenge consts.classes.tank.kit2.trident_cooldown_ticks set value 30

        data modify storage minecraft:hipochallenge consts.classes.tank.kit2.horn.effects set value [{id:"slowness",duration_seconds:2,amplifier:0,hide_particles:false}]
        data modify storage minecraft:hipochallenge consts.classes.tank.kit2.horn.radius set value 5
        data modify storage minecraft:hipochallenge consts.classes.tank.kit2.horn.recovery_ticks set value 20
    # kit 3
        data modify storage minecraft:hipochallenge consts.classes.tank.kit3.name_translation_key set value "hc.class.tank.kit3"
    
        data modify storage minecraft:hipochallenge consts.classes.tank.kit3.horn.radius set value 8
        data modify storage minecraft:hipochallenge consts.classes.tank.kit3.horn.modifiers.armor set value {id:"tank_k3_horn_armor",type:"armor",amount:-6,operation:"add_value"}
        
        data modify storage minecraft:hipochallenge consts.classes.tank.kit3.spirit.selection.forward_range_blocks set value 5
        data modify storage minecraft:hipochallenge consts.classes.tank.kit3.spirit.selection.sphere_range_blocks set value 5
        data modify storage minecraft:hipochallenge consts.classes.tank.kit3.spirit.buff.range_blocks set value 6
        data modify storage minecraft:hipochallenge consts.classes.tank.kit3.spirit.buff.modifiers.armor set value {id:"tank_k3_spirit_buff_armor",type:"armor",amount:6,operation:"add_value"}
        data modify storage minecraft:hipochallenge consts.classes.tank.kit3.spirit.debuff.modifiers.armor set value {id:"tank_k3_spirit_debuff_armor",type:"armor",amount:-6,operation:"add_value"}
        
        data modify storage minecraft:hipochallenge consts.classes.tank.kit3.bubble_shield.radius set value 4
    #
    # perk 1
        data modify storage minecraft:hipochallenge consts.classes.tank.perk1.name_translation_key set value "hc.class.tank.perk1"
    # perk 2
        data modify storage minecraft:hipochallenge consts.classes.tank.perk2.name_translation_key set value "hc.class.tank.perk2"
        
        data modify storage minecraft:hipochallenge consts.classes.tank.perk2.attack_effects set value [{id:"slowness",duration_seconds:1,amplifier:0,hide_particles:false}]
    # perk 3
        data modify storage minecraft:hipochallenge consts.classes.tank.perk3.name_translation_key set value "hc.class.tank.perk3"
        
        data modify storage minecraft:hipochallenge consts.classes.tank.perk3.initial_cooldown_ticks set value 600

# marksman
    data modify storage minecraft:hipochallenge consts.classes.marksman.name_translation_key set value "hc.class.marksman"
    
    data modify storage minecraft:hipochallenge consts.classes.marksman.dust_color set value [0.788, 0.541, 0.11]

    data modify storage minecraft:hipochallenge consts.classes.marksman.attributes.max_health set value 20
    data modify storage minecraft:hipochallenge consts.classes.marksman.attributes.armor set value 12
    data modify storage minecraft:hipochallenge consts.classes.marksman.attributes.armor_toughness set value 0
    data modify storage minecraft:hipochallenge consts.classes.marksman.attributes.scale set value 1
    data modify storage minecraft:hipochallenge consts.classes.marksman.attributes.burning_time set value 1
    data modify storage minecraft:hipochallenge consts.classes.marksman.attributes.explosion_knockback_resistance set value 0
    
    data modify storage minecraft:hipochallenge consts.classes.marksman.list_info.class_color set value "#dfb977"
    data modify storage minecraft:hipochallenge consts.classes.marksman.list_info.kit_color set value "#e9cea0"
    data modify storage minecraft:hipochallenge consts.classes.marksman.list_info.perk_color set value "#f2e3c9"
    
    # kit 1
        data modify storage minecraft:hipochallenge consts.classes.marksman.kit1.name_translation_key set value "hc.class.marksman.kit1"
    
        data modify storage minecraft:hipochallenge consts.classes.marksman.kit1.max_projectile_amount set value 6
        data modify storage minecraft:hipochallenge consts.classes.marksman.kit1.new_projectile_first_cooldown_ticks set value 60
        data modify storage minecraft:hipochallenge consts.classes.marksman.kit1.new_projectile_rest_cooldown_ticks set value 20
    # kit 2
        data modify storage minecraft:hipochallenge consts.classes.marksman.kit2.name_translation_key set value "hc.class.marksman.kit2"
        
        data modify storage minecraft:hipochallenge consts.classes.marksman.kit2.max_projectile_amount set value 5
        data modify storage minecraft:hipochallenge consts.classes.marksman.kit2.new_projectile_first_cooldown_ticks set value 80
        data modify storage minecraft:hipochallenge consts.classes.marksman.kit2.new_projectile_rest_cooldown_ticks set value 30
    # kit 3
        data modify storage minecraft:hipochallenge consts.classes.marksman.kit3.name_translation_key set value "hc.class.marksman.kit3"
    
        data modify storage minecraft:hipochallenge consts.classes.marksman.kit3.max_projectile_amount set value 3
        data modify storage minecraft:hipochallenge consts.classes.marksman.kit3.new_projectile_first_cooldown_ticks set value 80
        data modify storage minecraft:hipochallenge consts.classes.marksman.kit3.new_projectile_rest_cooldown_ticks set value 40
        data modify storage minecraft:hipochallenge consts.classes.marksman.kit3.revolver.max_loaded_projectile_amount set value 6
        data modify storage minecraft:hipochallenge consts.classes.marksman.kit3.revolver.recoil_pitch set value -20
        data modify storage minecraft:hipochallenge consts.classes.marksman.kit3.revolver.shot_cooldown_ticks set value 10
    #
    # perk 1
        data modify storage minecraft:hipochallenge consts.classes.marksman.perk1.name_translation_key set value "hc.class.marksman.perk1"
        
        data modify storage minecraft:hipochallenge consts.classes.marksman.perk1.suppression_or_air_magic_damage set value 2
    # perk 2
        data modify storage minecraft:hipochallenge consts.classes.marksman.perk2.name_translation_key set value "hc.class.marksman.perk2"
        
        data modify storage minecraft:hipochallenge consts.classes.marksman.perk2.health_limit_for_absorption set value 8
        data modify storage minecraft:hipochallenge consts.classes.marksman.perk2.absorption_multiplier set value 1
        data modify storage minecraft:hipochallenge consts.classes.marksman.perk2.absorption_seconds set value 3
    # perk 3
        data modify storage minecraft:hipochallenge consts.classes.marksman.perk3.name_translation_key set value "hc.class.marksman.perk3"
        
        data modify storage minecraft:hipochallenge consts.classes.marksman.perk3.added_projectiles set value 3

# assassin
    data modify storage minecraft:hipochallenge consts.classes.assassin.name_translation_key set value "hc.class.assassin"
    
    data modify storage minecraft:hipochallenge consts.classes.assassin.dust_color set value [0.173, 0.482, 0.824]

    data modify storage minecraft:hipochallenge consts.classes.assassin.attributes.max_health set value 20
    data modify storage minecraft:hipochallenge consts.classes.assassin.attributes.armor set value 16
    data modify storage minecraft:hipochallenge consts.classes.assassin.attributes.armor_toughness set value 4
    data modify storage minecraft:hipochallenge consts.classes.assassin.attributes.scale set value 1
    data modify storage minecraft:hipochallenge consts.classes.assassin.attributes.burning_time set value 1
    data modify storage minecraft:hipochallenge consts.classes.assassin.attributes.explosion_knockback_resistance set value 0
    
    data modify storage minecraft:hipochallenge consts.classes.assassin.list_info.class_color set value "#80b0e4" 
    data modify storage minecraft:hipochallenge consts.classes.assassin.list_info.kit_color set value "#a6c8ec"
    data modify storage minecraft:hipochallenge consts.classes.assassin.list_info.perk_color set value "#ccdff4"
    
    # kit 1
        data modify storage minecraft:hipochallenge consts.classes.assassin.kit1.name_translation_key set value "hc.class.assassin.kit1"
        
        data modify storage minecraft:hipochallenge consts.classes.assassin.kit1.parry.interaction.summon_distance set value 0.5
        data modify storage minecraft:hipochallenge consts.classes.assassin.kit1.parry.interaction.global_y_offset set value -0.9
        data modify storage minecraft:hipochallenge consts.classes.assassin.kit1.parry.interaction.height set value 1.25
        data modify storage minecraft:hipochallenge consts.classes.assassin.kit1.parry.interaction.width set value 0.54
        data modify storage minecraft:hipochallenge consts.classes.assassin.kit1.parry.interaction.lifetime_ticks set value 10
        data modify storage minecraft:hipochallenge consts.classes.assassin.kit1.parry.modifiers.entity_interaction_range set value {id:"assassin_k1_parrying_entity_interaction_range",type:"entity_interaction_range",value:-3,operation:"add_value"}
        data modify storage minecraft:hipochallenge consts.classes.assassin.kit1.parry.modifiers.attack_speed set value {id:"assassin_k1_parrying_attack_speed",type:"attack_speed",value:-1.1,operation:"add_value"}
    # kit 2
        data modify storage minecraft:hipochallenge consts.classes.assassin.kit2.name_translation_key set value "hc.class.assassin.kit2"
    # kit 3
        data modify storage minecraft:hipochallenge consts.classes.assassin.kit3.name_translation_key set value "hc.class.assassin.kit3"
    #
    # perk 1
        data modify storage minecraft:hipochallenge consts.classes.assassin.perk1.name_translation_key set value "hc.class.assassin.perk1"
    # perk 2
        data modify storage minecraft:hipochallenge consts.classes.assassin.perk2.name_translation_key set value "hc.class.assassin.perk2"
    # perk 3
        data modify storage minecraft:hipochallenge consts.classes.assassin.perk3.name_translation_key set value "hc.class.assassin.perk3"

# support
    data modify storage minecraft:hipochallenge consts.classes.support.name_translation_key set value "hc.class.support"
    
    data modify storage minecraft:hipochallenge consts.classes.support.dust_color set value [0.863, 0.455, 0.141]

    data modify storage minecraft:hipochallenge consts.classes.support.attributes.max_health set value 20
    data modify storage minecraft:hipochallenge consts.classes.support.attributes.armor set value 12
    data modify storage minecraft:hipochallenge consts.classes.support.attributes.armor_toughness set value 0
    data modify storage minecraft:hipochallenge consts.classes.support.attributes.scale set value 1
    data modify storage minecraft:hipochallenge consts.classes.support.attributes.burning_time set value 1
    data modify storage minecraft:hipochallenge consts.classes.support.attributes.explosion_knockback_resistance set value 0
    
    data modify storage minecraft:hipochallenge consts.classes.support.list_info.class_color set value "#eaac7c"
    data modify storage minecraft:hipochallenge consts.classes.support.list_info.kit_color set value "#f0c5a3"
    data modify storage minecraft:hipochallenge consts.classes.support.list_info.perk_color set value "#f7decb"
    
    # kit 1
        data modify storage minecraft:hipochallenge consts.classes.support.kit1.name_translation_key set value "hc.class.support.kit1"
    # kit 2
        data modify storage minecraft:hipochallenge consts.classes.support.kit2.name_translation_key set value "hc.class.support.kit2"
    # kit 3
        data modify storage minecraft:hipochallenge consts.classes.support.kit3.name_translation_key set value "hc.class.support.kit3"
    #
    # perk 1
        data modify storage minecraft:hipochallenge consts.classes.support.perk1.name_translation_key set value "hc.class.support.perk1"
    # perk 2
        data modify storage minecraft:hipochallenge consts.classes.support.perk2.name_translation_key set value "hc.class.support.perk2"
    # perk 3
        data modify storage minecraft:hipochallenge consts.classes.support.perk3.name_translation_key set value "hc.class.support.perk3"

# recon
    data modify storage minecraft:hipochallenge consts.classes.recon.name_translation_key set value "hc.class.recon"
    
    data modify storage minecraft:hipochallenge consts.classes.recon.dust_color set value [0.552,0.356,0.756]

    data modify storage minecraft:hipochallenge consts.classes.recon.attributes.max_health set value 20
    data modify storage minecraft:hipochallenge consts.classes.recon.attributes.armor set value 16
    data modify storage minecraft:hipochallenge consts.classes.recon.attributes.armor_toughness set value 4
    data modify storage minecraft:hipochallenge consts.classes.recon.attributes.scale set value 0.81
    data modify storage minecraft:hipochallenge consts.classes.recon.attributes.burning_time set value 1
    data modify storage minecraft:hipochallenge consts.classes.recon.attributes.explosion_knockback_resistance set value 0
    
    data modify storage minecraft:hipochallenge consts.classes.recon.list_info.class_color set value "#b99dda"
    data modify storage minecraft:hipochallenge consts.classes.recon.list_info.kit_color set value "#cebae5"
    data modify storage minecraft:hipochallenge consts.classes.recon.list_info.perk_color set value "#e3d8f0"
    
    # TODO: Add recon cooldowns and values
    
    # kit 1
        data modify storage minecraft:hipochallenge consts.classes.recon.kit1.name_translation_key set value "hc.class.recon.kit1"
    # kit 2
        data modify storage minecraft:hipochallenge consts.classes.recon.kit2.name_translation_key set value "hc.class.recon.kit2"
        
        data modify storage minecraft:hipochallenge consts.classes.recon.kit2.max_flare_arrow_amount set value 1
        data modify storage minecraft:hipochallenge consts.classes.recon.kit2.new_flare_arrow_first_cooldown_ticks set value 120
        data modify storage minecraft:hipochallenge consts.classes.recon.kit2.new_flare_arrow_rest_cooldown_ticks set value -1
        data modify storage minecraft:hipochallenge consts.classes.recon.kit2.flare_arrow.detection_dx set value 2.2
        data modify storage minecraft:hipochallenge consts.classes.recon.kit2.flare_arrow.detection_dy set value 2.2
        data modify storage minecraft:hipochallenge consts.classes.recon.kit2.flare_arrow.detection_dz set value 2.2
        data modify storage minecraft:hipochallenge consts.classes.recon.kit2.flare_arrow.explosion_range set value 6
        data modify storage minecraft:hipochallenge consts.classes.recon.kit2.flare_arrow.explosion_effects set value [{id:"glowing",duration_seconds:5,amplifier:0,hide_particles:false},{id:"blindness",duration_seconds:2,amplifier:0,hide_particles:false}]
    # kit 3
        data modify storage minecraft:hipochallenge consts.classes.recon.kit3.name_translation_key set value "hc.class.recon.kit3"
    #
    # perk 1
        data modify storage minecraft:hipochallenge consts.classes.recon.perk1.name_translation_key set value "hc.class.recon.perk1"
    # perk 2
        data modify storage minecraft:hipochallenge consts.classes.recon.perk2.name_translation_key set value "hc.class.recon.perk2"
    # perk 3
        data modify storage minecraft:hipochallenge consts.classes.recon.perk3.name_translation_key set value "hc.class.recon.perk3"

# assault
    data modify storage minecraft:hipochallenge consts.classes.assault.class_name_translation_key set value "hc.class.assault"

    data modify storage minecraft:hipochallenge consts.classes.assault.class_dust_color set value [0.803,0.286,0.270]

    data modify storage minecraft:hipochallenge consts.classes.assault.attributes.max_health set value 20
    data modify storage minecraft:hipochallenge consts.classes.assault.attributes.armor set value 12
    data modify storage minecraft:hipochallenge consts.classes.assault.attributes.armor_toughness set value 50
    data modify storage minecraft:hipochallenge consts.classes.assault.attributes.scale set value 1
    data modify storage minecraft:hipochallenge consts.classes.assault.attributes.burning_time set value 1
    data modify storage minecraft:hipochallenge consts.classes.assault.attributes.explosion_knockback_resistance set value 0
    
    data modify storage minecraft:hipochallenge consts.classes.assault.list_info.class_color set value "#dc928e"
    data modify storage minecraft:hipochallenge consts.classes.assault.list_info.kit_color set value "#e7b3b0"
    data modify storage minecraft:hipochallenge consts.classes.assault.list_info.perk_color set value "#f1d3d2"
    
    # TODO: Add assault cooldowns and values
    
    # kit 1
        data modify storage minecraft:hipochallenge consts.classes.assault.kit1.name_translation_key set value "hc.class.assault.kit1"
    # kit 2
        data modify storage minecraft:hipochallenge consts.classes.assault.kit2.name_translation_key set value "hc.class.assault.kit2"
    # kit 3
        data modify storage minecraft:hipochallenge consts.classes.assault.kit3.name_translation_key set value "hc.class.assault.kit3"
    #
    # perk 1
        data modify storage minecraft:hipochallenge consts.classes.assault.perk1.name_translation_key set value "hc.class.assault.perk1"
    # perk 2
        data modify storage minecraft:hipochallenge consts.classes.assault.perk2.name_translation_key set value "hc.class.assault.perk2"
    # perk 3
        data modify storage minecraft:hipochallenge consts.classes.assault.perk3.name_translation_key set value "hc.class.assault.perk3"

#

## MAPS

# callouts

# TODO: add callout objects and lists

## Text components

# TODO: delete or use text components
