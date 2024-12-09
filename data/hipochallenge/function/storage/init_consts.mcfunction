# INFO:
# This function is executed every reload, or 'load.mcfunction' call. 
# This file is meant to be changed only by the developers, or a user who might
# want to change properties of the game.
#
# HOW TO MODIFY:
# - Values in this file are named with SCREAM_CASE, to represent constant
#   values.
# 
# - For cooldown, or '..._CD_TICKS' constants, remember that 20 gameticks is
#   equivalent to 1 second in game. Using -1 means INFINITE.

# TODO: Complete the list of constants

## GAME CONSTANTS

data modify storage minecraft:hipochallenge MAP_VERSION set value "pre-alpha"

data modify storage minecraft:hipochallenge TEAM_SIZE set value 3
data modify storage minecraft:hipochallenge NECESSARY_PLAYERS_FOR_GAME set value 6
data modify storage minecraft:hipochallenge ROUND_DURATION_TICKS set value 2400
data modify storage minecraft:hipochallenge WIN_ROUNDS set value 5
data modify storage minecraft:hipochallenge MATCH_REQUEST_DURATION_TICKS set value 1200

## LIMITS

data modify storage minecraft:hipochallenge MAX_RAY_CASTING_ITERATIONS set value 256
data modify storage minecraft:hipochallenge NO_GRAVITY_PROJECTILES_LIFETIME_TICKS set value 200

## TEAMS

data modify storage minecraft:hipochallenge TEAM1_DEFAULT_NAME set value "Team 1"
data modify storage minecraft:hipochallenge TEAM2_DEFAULT_NAME set value "Team 2"

# neutral
    data modify storage minecraft:hipochallenge NEUTRAL_TEAM_COLOR_NUMBER set value -1
    data modify storage minecraft:hipochallenge NEUTRAL_TEAM_DUST_COLOR set value [0.400,0.400,0.400]
    data modify storage minecraft:hipochallenge NEUTRAL_TEAM_TEXT_COLOR set value "white"
    data modify storage minecraft:hipochallenge NEUTRAL_TEAM_ARMOR_COLOR set value 6579300
    data modify storage minecraft:hipochallenge NEUTRAL_TEAM_TRIM_MATERIAL set value "netherite"

# red
    data modify storage minecraft:hipochallenge RED_TEAM_COLOR_NUMBER set value 1
    data modify storage minecraft:hipochallenge RED_TEAM_DUST_COLOR set value [1.000,0.000,0.000]
    data modify storage minecraft:hipochallenge RED_TEAM_TEXT_COLOR set value "red"
    data modify storage minecraft:hipochallenge RED_TEAM_ARMOR_COLOR set value 11546150
    data modify storage minecraft:hipochallenge RED_TEAM_TRIM_MATERIAL set value "redstone"

# yellow
    data modify storage minecraft:hipochallenge YELLOW_TEAM_COLOR_NUMBER set value 2
    data modify storage minecraft:hipochallenge YELLOW_TEAM_DUST_COLOR set value [1.000,1.000,0.000]
    data modify storage minecraft:hipochallenge YELLOW_TEAM_TEXT_COLOR set value "yellow"
    data modify storage minecraft:hipochallenge YELLOW_TEAM_ARMOR_COLOR set value 16765471
    data modify storage minecraft:hipochallenge YELLOW_TEAM_TRIM_MATERIAL set value "gold"

# green
    data modify storage minecraft:hipochallenge GREEN_TEAM_COLOR_NUMBER set value 3
    data modify storage minecraft:hipochallenge GREEN_TEAM_DUST_COLOR set value [0.000,1.000,0.000]
    data modify storage minecraft:hipochallenge GREEN_TEAM_TEXT_COLOR set value "green"
    data modify storage minecraft:hipochallenge GREEN_TEAM_ARMOR_COLOR set value 8439583
    data modify storage minecraft:hipochallenge GREEN_TEAM_TRIM_MATERIAL set value "emerald"

# blue
    data modify storage minecraft:hipochallenge BLUE_TEAM_COLOR_NUMBER set value 4
    data modify storage minecraft:hipochallenge BLUE_TEAM_DUST_COLOR set value [0.000,0.000,1.000]
    data modify storage minecraft:hipochallenge BLUE_TEAM_TEXT_COLOR set value "blue"
    data modify storage minecraft:hipochallenge BLUE_TEAM_ARMOR_COLOR set value 3949738
    data modify storage minecraft:hipochallenge BLUE_TEAM_TRIM_MATERIAL set value "lapis"

# purple
    data modify storage minecraft:hipochallenge PURPLE_TEAM_COLOR_NUMBER set value 5
    data modify storage minecraft:hipochallenge PURPLE_TEAM_DUST_COLOR set value [1.000,0.000,1.000]
    data modify storage minecraft:hipochallenge PURPLE_TEAM_TEXT_COLOR set value "light_purple"
    data modify storage minecraft:hipochallenge PURPLE_TEAM_ARMOR_COLOR set value 13061821
    data modify storage minecraft:hipochallenge PURPLE_TEAM_TRIM_MATERIAL set value "amethyst"
#

## CLASSES

# tank
    data modify storage minecraft:hipochallenge TANK_CLASS_NAME_TRANSLATION_KEY set value "hc.class.tank"
    
    data modify storage minecraft:hipochallenge TANK_CLASS_DUST_COLOR set value [0.176,0.6,0.392]
    
    data modify storage minecraft:hipochallenge TANK_ATTRIBUTE_MAX_HEALTH set value 20
    data modify storage minecraft:hipochallenge TANK_ATTRIBUTE_ARMOR set value 20
    data modify storage minecraft:hipochallenge TANK_ATTRIBUTE_ARMOR_TOUGHNESS set value 12
    data modify storage minecraft:hipochallenge TANK_ATTRIBUTE_SCALE set value 1.1
    data modify storage minecraft:hipochallenge TANK_ATTRIBUTE_BURNING_TIME set value 1
    data modify storage minecraft:hipochallenge TANK_ATTRIBUTE_EXPLOSION_KNOCKBACK_RESISTANCE set value 0
    
    data modify storage minecraft:hipochallenge TANK_CLASS_LIST_INFO_COLOR set value "#80c3a1"
    data modify storage minecraft:hipochallenge TANK_KIT_LIST_INFO_COLOR set value "#a6d5bd"
    data modify storage minecraft:hipochallenge TANK_PERK_LIST_INFO_COLOR set value "#cce7d9"
    
    # kit 1
        data modify storage minecraft:hipochallenge TANK_K1_NAME_TRANSLATION_KEY set value "hc.class.tank.kit1"

        data modify storage minecraft:hipochallenge TANK_K1_HORN_CD_TICKS set value -1
        data modify storage minecraft:hipochallenge TANK_K1_CASTLING_CD_TICKS set value 400

        data modify storage minecraft:hipochallenge TANK_K1_HORN_RADIUS set value 7
        data modify storage minecraft:hipochallenge TANK_K1_HORN_ABSORPTION_AMPLIFIER set value 1
        data modify storage minecraft:hipochallenge TANK_K1_HORN_ABSORPTION_DURATION_SECONDS set value 3
    # kit 2
        data modify storage minecraft:hipochallenge TANK_K2_NAME_TRANSLATION_KEY set value "hc.class.tank.kit2"

        data modify storage minecraft:hipochallenge TANK_K2_TRIDENT_CD_TICKS set value 30

        data modify storage minecraft:hipochallenge TANK_K2_HORN_RADIUS set value 5
        data modify storage minecraft:hipochallenge TANK_K2_HORN_CD_TICKS set value -1
        data modify storage minecraft:hipochallenge TANK_K2_HORN_RECOVERY_TICKS set value 20
    # kit 3
        data modify storage minecraft:hipochallenge TANK_K3_NAME_TRANSLATION_KEY set value "hc.class.tank.kit3"
    
        data modify storage minecraft:hipochallenge TANK_K3_HORN_CD_TICKS set value -1
        data modify storage minecraft:hipochallenge TANK_K3_BUBBLE_SHIELD_CD_TICKS set value -1
        data modify storage minecraft:hipochallenge TANK_K3_SPIRIT_CD_TICKS set value 100
        data modify storage minecraft:hipochallenge TANK_K3_HORN_ARMOR_MODIFIER_ID set value "tank_k3_horn"
        data modify storage minecraft:hipochallenge TANK_K3_HORN_ARMOR_MODIFIER_AMOUNT set value -6
        data modify storage minecraft:hipochallenge TANK_K3_SPIRIT_SELECTOR_RANGE_BLOCKS set value 5
        data modify storage minecraft:hipochallenge TANK_K3_SPIRIT_SELECTOR_RANGE_SPHERE_BLOCKS set value 5
        data modify storage minecraft:hipochallenge TANK_K3_SPIRIT_BUFF_RANGE_BLOCKS set value 6
        data modify storage minecraft:hipochallenge TANK_K3_SPIRIT_BUFF_MODIFIER_AMOUNT set value 6
        data modify storage minecraft:hipochallenge TANK_K3_SPIRIT_BUFF_MODIFIER_ID set value "tank_k3_spirit_buff"
        data modify storage minecraft:hipochallenge TANK_K3_SPIRIT_DEBUFF_MODIFIER_ID set value "tank_k3_spirit_debuff"
    #
    # perk 1
        data modify storage minecraft:hipochallenge TANK_P1_NAME_TRANSLATION_KEY set value "hc.class.tank.perk1"
        
        data modify storage minecraft:hipochallenge TANK_P1_NUTRITIOUS_MEAL_EAT_SECONDS set value 8
        data modify storage minecraft:hipochallenge TANK_P1_NUTRITIOUS_MEAL_OBTAINED_HEALTH set value 10
    # perk 2
        data modify storage minecraft:hipochallenge TANK_P2_NAME_TRANSLATION_KEY set value "hc.class.tank.perk2"
        
        data modify storage minecraft:hipochallenge TANK_P2_SLOWNESS_AMPLIFIER set value 0
        data modify storage minecraft:hipochallenge TANK_P2_SLOWNESS_DURATION_SECONDS set value 1
    # perk 3
        data modify storage minecraft:hipochallenge TANK_P3_NAME_TRANSLATION_KEY set value "hc.class.tank.perk3"
        
        data modify storage minecraft:hipochallenge TANK_P3_NUTRITIOUS_MEAL_CD_TICKS set value 600

# marksman
    data modify storage minecraft:hipochallenge MARKSMAN_CLASS_NAME_TRANSLATION_KEY set value "hc.class.marksman"
    
    data modify storage minecraft:hipochallenge MARKSMAN_CLASS_DUST_COLOR set value [0.788, 0.541, 0.11]

    data modify storage minecraft:hipochallenge MARKSMAN_ATTRIBUTE_MAX_HEALTH set value 20
    data modify storage minecraft:hipochallenge MARKSMAN_ATTRIBUTE_ARMOR set value 12
    data modify storage minecraft:hipochallenge MARKSMAN_ATTRIBUTE_ARMOR_TOUGHNESS set value 0
    data modify storage minecraft:hipochallenge MARKSMAN_ATTRIBUTE_SCALE set value 1
    data modify storage minecraft:hipochallenge MARKSMAN_ATTRIBUTE_BURNING_TIME set value 1
    data modify storage minecraft:hipochallenge MARKSMAN_ATTRIBUTE_EXPLOSION_KNOCKBACK_RESISTANCE set value 0
    
    data modify storage minecraft:hipochallenge MARKSMAN_CLASS_LIST_INFO_COLOR set value "#dfb977"
    data modify storage minecraft:hipochallenge MARKSMAN_KIT_LIST_INFO_COLOR set value "#e9cea0"
    data modify storage minecraft:hipochallenge MARKSMAN_PERK_LIST_INFO_COLOR set value "#f2e3c9"
    
    # kit 1
        data modify storage minecraft:hipochallenge MARKSMAN_K1_NAME_TRANSLATION_KEY set value "hc.class.marksman.kit1"
    
        data modify storage minecraft:hipochallenge MARKSMAN_K1_MAX_PROJECTILE_AMOUNT set value 6
        data modify storage minecraft:hipochallenge MARKSMAN_K1_NEW_PROJECTILE_FIRST_CD_TICKS set value 60
        data modify storage minecraft:hipochallenge MARKSMAN_K1_NEW_PROJECTILE_REST_CD_TICKS set value 20
        data modify storage minecraft:hipochallenge MARKSMAN_K1_SMOKE_ARROW_CROSSBOW_CD_TICKS set value -1
    # kit 2
        data modify storage minecraft:hipochallenge MARKSMAN_K2_NAME_TRANSLATION_KEY set value "hc.class.marksman.kit2"
        
        data modify storage minecraft:hipochallenge MARKSMAN_K2_MAX_PROJECTILE_AMOUNT set value 5
        data modify storage minecraft:hipochallenge MARKSMAN_K2_NEW_PROJECTILE_FIRST_CD_TICKS set value 80
        data modify storage minecraft:hipochallenge MARKSMAN_K2_NEW_PROJECTILE_REST_CD_TICKS set value 30
    # kit 3
        data modify storage minecraft:hipochallenge MARKSMAN_K3_NAME_TRANSLATION_KEY set value "hc.class.marksman.kit3"
    
        data modify storage minecraft:hipochallenge MARKSMAN_K3_MAX_LOADED_PROJECTILE_AMOUNT set value 6
        data modify storage minecraft:hipochallenge MARKSMAN_K3_MAX_PROJECTILE_AMOUNT set value 3
        data modify storage minecraft:hipochallenge MARKSMAN_K3_NEW_PROJECTILE_FIRST_CD_TICKS set value 80
        data modify storage minecraft:hipochallenge MARKSMAN_K3_NEW_PROJECTILE_REST_CD_TICKS set value 40
        data modify storage minecraft:hipochallenge MARKSMAN_K3_PISTOL_RECOIL_PITCH set value -20
        data modify storage minecraft:hipochallenge MARKSMAN_K3_PISTOL_SHOT_CD_TICKS set value 10
    #
    # perk 1
        data modify storage minecraft:hipochallenge MARKSMAN_P1_NAME_TRANSLATION_KEY set value "hc.class.marksman.perk1"
        
        data modify storage minecraft:hipochallenge MARKSMAN_P1_SUPPRESSION_OR_AIR_MAGIC_DAMAGE set value 2
    # perk 2
        data modify storage minecraft:hipochallenge MARKSMAN_P2_NAME_TRANSLATION_KEY set value "hc.class.marksman.perk2"
        
        data modify storage minecraft:hipochallenge MARKSMAN_P2_HEALTH_LIMIT_FOR_ABSORPTION set value 8
        data modify storage minecraft:hipochallenge MARKSMAN_P2_ABSORPTION_MULTIPLIER set value 1
        data modify storage minecraft:hipochallenge MARKSMAN_P2_ABSORPTION_SECONDS set value 3
    # perk 3
        data modify storage minecraft:hipochallenge MARKSMAN_P3_NAME_TRANSLATION_KEY set value "hc.class.marksman.perk3"
        
        data modify storage minecraft:hipochallenge MARKSMAN_P3_ADDED_PROJECTILES set value 3

# assassin
    data modify storage minecraft:hipochallenge ASSASSIN_CLASS_NAME_TRANSLATION_KEY set value "hc.class.assassin"
    
    data modify storage minecraft:hipochallenge ASSASSIN_CLASS_DUST_COLOR set value [0.173, 0.482, 0.824]

    data modify storage minecraft:hipochallenge ASSASSIN_ATTRIBUTE_MAX_HEALTH set value 20
    data modify storage minecraft:hipochallenge ASSASSIN_ATTRIBUTE_ARMOR set value 16
    data modify storage minecraft:hipochallenge ASSASSIN_ATTRIBUTE_ARMOR_TOUGHNESS set value 4
    data modify storage minecraft:hipochallenge ASSASSIN_ATTRIBUTE_SCALE set value 1
    data modify storage minecraft:hipochallenge ASSASSIN_ATTRIBUTE_BURNING_TIME set value 1
    data modify storage minecraft:hipochallenge ASSASSIN_ATTRIBUTE_EXPLOSION_KNOCKBACK_RESISTANCE set value 0
    
    data modify storage minecraft:hipochallenge ASSASSIN_CLASS_LIST_INFO_COLOR set value "#80b0e4" 
    data modify storage minecraft:hipochallenge ASSASSIN_KIT_LIST_INFO_COLOR set value "#a6c8ec"
    data modify storage minecraft:hipochallenge ASSASSIN_PERK_LIST_INFO_COLOR set value "#ccdff4"
    
    # TODO: Add assassin cooldowns and values
    
    # kit 1
        data modify storage minecraft:hipochallenge ASSASSIN_K1_NAME_TRANSLATION_KEY set value "hc.class.assassin.kit1"
        
        data modify storage minecraft:hipochallenge ASSASSIN_K1_PARRY_INTERACTION_SUMMON_DISTANCE set value 0.5
        data modify storage minecraft:hipochallenge ASSASSIN_K1_PARRY_INTERACTION_GLOBAL_Y_OFFSET set value -0.9
        data modify storage minecraft:hipochallenge ASSASSIN_K1_PARRY_INTERACTION_HEIGHT set value 1.25
        data modify storage minecraft:hipochallenge ASSASSIN_K1_PARRY_INTERACTION_WIDTH set value 0.54
        data modify storage minecraft:hipochallenge ASSASSIN_K1_PARRY_INTERACTION_LIFETIME_TICKS set value 10
    # kit 2
        data modify storage minecraft:hipochallenge ASSASSIN_K2_NAME_TRANSLATION_KEY set value "hc.class.assassin.kit2"
    # kit 3
        data modify storage minecraft:hipochallenge ASSASSIN_K3_NAME_TRANSLATION_KEY set value "hc.class.assassin.kit3"
    #
    # perk 1
        data modify storage minecraft:hipochallenge ASSASSIN_P1_NAME_TRANSLATION_KEY set value "hc.class.assassin.perk1"
    # perk 2
        data modify storage minecraft:hipochallenge ASSASSIN_P2_NAME_TRANSLATION_KEY set value "hc.class.assassin.perk2"
    # perk 3
        data modify storage minecraft:hipochallenge ASSASSIN_P3_NAME_TRANSLATION_KEY set value "hc.class.assassin.perk3"

# support
    data modify storage minecraft:hipochallenge SUPPORT_CLASS_NAME_TRANSLATION_KEY set value "hc.class.support"
    
    data modify storage minecraft:hipochallenge SUPPORT_CLASS_DUST_COLOR set value [0.863, 0.455, 0.141]

    data modify storage minecraft:hipochallenge SUPPORT_ATTRIBUTE_MAX_HEALTH set value 20
    data modify storage minecraft:hipochallenge SUPPORT_ATTRIBUTE_ARMOR set value 12
    data modify storage minecraft:hipochallenge SUPPORT_ATTRIBUTE_ARMOR_TOUGHNESS set value 0
    data modify storage minecraft:hipochallenge SUPPORT_ATTRIBUTE_SCALE set value 1
    data modify storage minecraft:hipochallenge SUPPORT_ATTRIBUTE_BURNING_TIME set value 1
    data modify storage minecraft:hipochallenge SUPPORT_ATTRIBUTE_EXPLOSION_KNOCKBACK_RESISTANCE set value 0
    
    data modify storage minecraft:hipochallenge SUPPORT_CLASS_LIST_INFO_COLOR set value "#eaac7c"
    data modify storage minecraft:hipochallenge SUPPORT_KIT_LIST_INFO_COLOR set value "#f0c5a3"
    data modify storage minecraft:hipochallenge SUPPORT_PERK_LIST_INFO_COLOR set value "#f7decb"
    
    # TODO: Add support cooldowns and values
    
    # kit 1
        data modify storage minecraft:hipochallenge SUPPORT_K1_NAME_TRANSLATION_KEY set value "hc.class.support.kit1"
    # kit 2
        data modify storage minecraft:hipochallenge SUPPORT_K2_NAME_TRANSLATION_KEY set value "hc.class.support.kit2"
    # kit 3
        data modify storage minecraft:hipochallenge SUPPORT_K3_NAME_TRANSLATION_KEY set value "hc.class.support.kit3"
    #
    # perk 1
        data modify storage minecraft:hipochallenge SUPPORT_P1_NAME_TRANSLATION_KEY set value "hc.class.support.perk1"
    # perk 2
        data modify storage minecraft:hipochallenge SUPPORT_P2_NAME_TRANSLATION_KEY set value "hc.class.support.perk2"
    # perk 3
        data modify storage minecraft:hipochallenge SUPPORT_P3_NAME_TRANSLATION_KEY set value "hc.class.support.perk3"

# recon
    data modify storage minecraft:hipochallenge RECON_CLASS_NAME_TRANSLATION_KEY set value "hc.class.recon"
    
    data modify storage minecraft:hipochallenge RECON_CLASS_DUST_COLOR set value [0.552,0.356,0.756]

    data modify storage minecraft:hipochallenge RECON_ATTRIBUTE_MAX_HEALTH set value 20
    data modify storage minecraft:hipochallenge RECON_ATTRIBUTE_ARMOR set value 16
    data modify storage minecraft:hipochallenge RECON_ATTRIBUTE_ARMOR_TOUGHNESS set value 4
    data modify storage minecraft:hipochallenge RECON_ATTRIBUTE_SCALE set value 0.81
    data modify storage minecraft:hipochallenge RECON_ATTRIBUTE_BURNING_TIME set value 1
    data modify storage minecraft:hipochallenge RECON_ATTRIBUTE_EXPLOSION_KNOCKBACK_RESISTANCE set value 0
    
    data modify storage minecraft:hipochallenge RECON_CLASS_LIST_INFO_COLOR set value "#b99dda"
    data modify storage minecraft:hipochallenge RECON_KIT_LIST_INFO_COLOR set value "#cebae5"
    data modify storage minecraft:hipochallenge RECON_PERK_LIST_INFO_COLOR set value "#e3d8f0"
    
    # TODO: Add recon cooldowns and values
    
    # kit 1
        data modify storage minecraft:hipochallenge RECON_K1_NAME_TRANSLATION_KEY set value "hc.class.recon.kit1"
    # kit 2
        data modify storage minecraft:hipochallenge RECON_K2_NAME_TRANSLATION_KEY set value "hc.class.recon.kit2"
        
        data modify storage minecraft:hipochallenge RECON_K2_MAX_FLARE_ARROW_AMOUNT set value 1
        data modify storage minecraft:hipochallenge RECON_K2_NEW_FLARE_ARROW_FIRST_CD_TICKS set value 120
        data modify storage minecraft:hipochallenge RECON_K2_NEW_FLARE_ARROW_REST_CD_TICKS set value -1
        data modify storage minecraft:hipochallenge RECON_K2_FLARE_ARROW_DETECTION_DX set value 2.2
        data modify storage minecraft:hipochallenge RECON_K2_FLARE_ARROW_DETECTION_DY set value 2.2
        data modify storage minecraft:hipochallenge RECON_K2_FLARE_ARROW_DETECTION_DZ set value 2.2
        data modify storage minecraft:hipochallenge RECON_K2_FLARE_ARROW_EXPLOSION_RANGE set value 6
        data modify storage minecraft:hipochallenge RECON_K2_FLARE_ARROW_GLOWING_DURATION_SECONDS set value 5
        data modify storage minecraft:hipochallenge RECON_K2_FLARE_ARROW_BLINDNESS_AMPLIFIER set value 0
        data modify storage minecraft:hipochallenge RECON_K2_FLARE_ARROW_BLINDNESS_DURATION_SECONDS set value 2
    # kit 3
        data modify storage minecraft:hipochallenge RECON_K3_NAME_TRANSLATION_KEY set value "hc.class.recon.kit3"
    #
    # perk 1
        data modify storage minecraft:hipochallenge RECON_P1_NAME_TRANSLATION_KEY set value "hc.class.recon.perk1"
    # perk 2
        data modify storage minecraft:hipochallenge RECON_P2_NAME_TRANSLATION_KEY set value "hc.class.recon.perk2"
    # perk 3
        data modify storage minecraft:hipochallenge RECON_P3_NAME_TRANSLATION_KEY set value "hc.class.recon.perk3"

# assault
    data modify storage minecraft:hipochallenge ASSAULT_CLASS_NAME_TRANSLATION_KEY set value "hc.class.assault"

    data modify storage minecraft:hipochallenge ASSAULT_CLASS_DUST_COLOR set value [0.803,0.286,0.270]

    data modify storage minecraft:hipochallenge ASSAULT_ATTRIBUTE_MAX_HEALTH set value 20
    data modify storage minecraft:hipochallenge ASSAULT_ATTRIBUTE_ARMOR set value 12
    data modify storage minecraft:hipochallenge ASSAULT_ATTRIBUTE_ARMOR_TOUGHNESS set value 50
    data modify storage minecraft:hipochallenge ASSAULT_ATTRIBUTE_SCALE set value 1
    data modify storage minecraft:hipochallenge ASSAULT_ATTRIBUTE_BURNING_TIME set value 1
    data modify storage minecraft:hipochallenge ASSAULT_ATTRIBUTE_EXPLOSION_KNOCKBACK_RESISTANCE set value 0
    
    data modify storage minecraft:hipochallenge ASSAULT_CLASS_LIST_INFO_COLOR set value "#dc928e"
    data modify storage minecraft:hipochallenge ASSAULT_KIT_LIST_INFO_COLOR set value "#e7b3b0"
    data modify storage minecraft:hipochallenge ASSAULT_PERK_LIST_INFO_COLOR set value "#f1d3d2"
    
    # TODO: Add assault cooldowns and values
    
    # kit 1
        data modify storage minecraft:hipochallenge ASSAULT_K1_NAME_TRANSLATION_KEY set value "hc.class.assault.kit1"
    # kit 2
        data modify storage minecraft:hipochallenge ASSAULT_K2_NAME_TRANSLATION_KEY set value "hc.class.assault.kit2"
    # kit 3
        data modify storage minecraft:hipochallenge ASSAULT_K3_NAME_TRANSLATION_KEY set value "hc.class.assault.kit3"
    #
    # perk 1
        data modify storage minecraft:hipochallenge ASSAULT_P1_NAME_TRANSLATION_KEY set value "hc.class.assault.perk1"
    # perk 2
        data modify storage minecraft:hipochallenge ASSAULT_P2_NAME_TRANSLATION_KEY set value "hc.class.assault.perk2"
    # perk 3
        data modify storage minecraft:hipochallenge ASSAULT_P3_NAME_TRANSLATION_KEY set value "hc.class.assault.perk3"

#

## Text components

data modify storage minecraft:hipochallenge NO_COOLDOWN_TEXT_COMPONENT set value '{"color":"yellow","translate":"Un solo uso"}'
data modify storage minecraft:hipochallenge COOLDOWN_TEXT_COMPONENT set value ''