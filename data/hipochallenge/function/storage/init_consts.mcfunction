# INFO:
# This function is executed every reload, or 'load.mcfunction' call. This file is meant to be
# changed only by the developers, or a user who might want to change properties of the game.
#
# HOW TO MODIFY:
# - Values in this file are named with SCREAM_CASE, to represent constant values.
# 
# - For cooldown, or '..._CD_TICKS' constants, remember that 20 gameticks is equivalent to
#   1 second in game. Using -1 means INFINITE.

# FIXME: This file is not included in 'load.mcfunction' for safety reasons, YET!

# TODO: Complete the list of constants

## GAME CONSTANTS

data modify storage minecraft:hipochallenge MAP_VERSION set value "pre-alpha"

data modify storage minecraft:hipochallenge NECESSARY_PLAYERS_FOR_GAME set value 6
data modify storage minecraft:hipochallenge ROUND_DURATION_TICKS set value 2400
data modify storage minecraft:hipochallenge WIN_ROUNDS set value 5
data modify storage minecraft:hipochallenge MATCH_REQUEST_DURATION_TICKS set value 1200

## TEAMS

data modify storage minecraft:hipochallenge TEAM_SIZE set value 3

data modify storage minecraft:hipochallenge TEAM1_DEFAULT_NAME set value "Team 1"
data modify storage minecraft:hipochallenge TEAM2_DEFAULT_NAME set value "Team 2"

# red
    data modify storage minecraft:hipochallenge RED_TEAM_COLOR_NUMBER set value 1
    data modify storage minecraft:hipochallenge RED_TEAM_DUST_COLOR set value "[1.000,0.000,0.000]"
    data modify storage minecraft:hipochallenge RED_TEAM_TEXT_COLOR set value "red"
    data modify storage minecraft:hipochallenge RED_TEAM_ARMOR_COLOR set value 11546150
    data modify storage minecraft:hipochallenge RED_TEAM_TRIM_MATERIAL set value "redstone"

# yellow
    data modify storage minecraft:hipochallenge YELLOW_TEAM_COLOR_NUMBER set value 2
    data modify storage minecraft:hipochallenge YELLOW_TEAM_DUST_COLOR set value "[1.000,1.000,0.000]"
    data modify storage minecraft:hipochallenge YELLOW_TEAM_TEXT_COLOR set value "yellow"
    data modify storage minecraft:hipochallenge YELLOW_TEAM_ARMOR_COLOR set value 16765471
    data modify storage minecraft:hipochallenge YELLOW_TEAM_TRIM_MATERIAL set value "gold"

# green
    data modify storage minecraft:hipochallenge GREEN_TEAM_COLOR_NUMBER set value 3
    data modify storage minecraft:hipochallenge GREEN_TEAM_DUST_COLOR set value "[0.000,1.000,0.000]"
    data modify storage minecraft:hipochallenge GREEN_TEAM_TEXT_COLOR set value "green"
    data modify storage minecraft:hipochallenge GREEN_TEAM_ARMOR_COLOR set value 8439583
    data modify storage minecraft:hipochallenge GREEN_TEAM_TRIM_MATERIAL set value "emerald"

# blue
    data modify storage minecraft:hipochallenge BLUE_TEAM_COLOR_NUMBER set value 4
    data modify storage minecraft:hipochallenge BLUE_TEAM_DUST_COLOR set value "[0.000,0.000,1.000]"
    data modify storage minecraft:hipochallenge BLUE_TEAM_TEXT_COLOR set value "blue"
    data modify storage minecraft:hipochallenge BLUE_TEAM_ARMOR_COLOR set value 3949738
    data modify storage minecraft:hipochallenge BLUE_TEAM_TRIM_MATERIAL set value "lapis"

# purple
    data modify storage minecraft:hipochallenge PURPLE_TEAM_COLOR_NUMBER set value 5
    data modify storage minecraft:hipochallenge PURPLE_TEAM_DUST_COLOR set value "[1.000,0.000,1.000]"
    data modify storage minecraft:hipochallenge PURPLE_TEAM_TEXT_COLOR set value "purple"
    data modify storage minecraft:hipochallenge PURPLE_TEAM_ARMOR_COLOR set value 13061821
    data modify storage minecraft:hipochallenge PURPLE_TEAM_TRIM_MATERIAL set value "amethyst"
#

## CLASSES

# tank
    data modify storage minecraft:hipochallenge TANK_ATTRIBUTE_MAX_HEALTH set value 20
    data modify storage minecraft:hipochallenge TANK_ATTRIBUTE_ARMOR set value 20
    data modify storage minecraft:hipochallenge TANK_ATTRIBUTE_ARMOR_TOUGHNESS set value 12
    data modify storage minecraft:hipochallenge TANK_ATTRIBUTE_SCALE set value 1.1
    data modify storage minecraft:hipochallenge TANK_ATTRIBUTE_BURNING_TIME set value 1
    data modify storage minecraft:hipochallenge TANK_ATTRIBUTE_EXPLOSION_KNOCKBACK_RESISTANCE set value 0
    
    # kit 1 
        data modify storage minecraft:hipochallenge TANK_K1_HORN_CD_TICKS set value -1
        data modify storage minecraft:hipochallenge TANK_K1_CASTLING_CD_TICKS set value 42069
    # kit 2
        data modify storage minecraft:hipochallenge TANK_K2_HORN_CD_TICKS set value -1
    # kit 3
        data modify storage minecraft:hipochallenge TANK_K3_HORN_CD_TICKS set value -1
        data modify storage minecraft:hipochallenge TANK_K3_HORN_ARMOR_MODIFIER_ID set value "tank_k3_horn"
    #
    # perk 1
    # perk 2
    # perk 3

# marksman
    data modify storage minecraft:hipochallenge MARKSMAN_ATTRIBUTE_MAX_HEALTH set value 20
    data modify storage minecraft:hipochallenge MARKSMAN_ATTRIBUTE_ARMOR set value 0
    data modify storage minecraft:hipochallenge MARKSMAN_ATTRIBUTE_ARMOR_TOUGHNESS set value 0
    data modify storage minecraft:hipochallenge MARKSMAN_ATTRIBUTE_SCALE set value 1
    data modify storage minecraft:hipochallenge MARKSMAN_ATTRIBUTE_BURNING_TIME set value 1
    data modify storage minecraft:hipochallenge MARKSMAN_ATTRIBUTE_EXPLOSION_KNOCKBACK_RESISTANCE set value 0

    # kit 1
    # kit 2
    # kit 3
        # TODO: Change these placeholder values
        data modify storage minecraft:hipochallenge MARKSMAN_K3_PISTOL_RECOIL_PITCH set value -20
        data modify storage minecraft:hipochallenge MARKSMAN_K3_PISTOL_SHOT_CD_TICKS set value 42069
    #
    # perk 1
    # perk 2
    # perk 3

# assassin
    data modify storage minecraft:hipochallenge ASSASSIN_ATTRIBUTE_MAX_HEALTH set value 20
    data modify storage minecraft:hipochallenge ASSASSIN_ATTRIBUTE_ARMOR set value 0
    data modify storage minecraft:hipochallenge ASSASSIN_ATTRIBUTE_ARMOR_TOUGHNESS set value 0
    data modify storage minecraft:hipochallenge ASSASSIN_ATTRIBUTE_SCALE set value 1
    data modify storage minecraft:hipochallenge ASSASSIN_ATTRIBUTE_BURNING_TIME set value 1
    data modify storage minecraft:hipochallenge ASSASSIN_ATTRIBUTE_EXPLOSION_KNOCKBACK_RESISTANCE set value 0

    # kit 1
    # kit 2
    # kit 3
    #
    # perk 1
    # perk 2
    # perk 3

# support
    data modify storage minecraft:hipochallenge SUPPORT_ATTRIBUTE_MAX_HEALTH set value 20
    data modify storage minecraft:hipochallenge SUPPORT_ATTRIBUTE_ARMOR set value 0
    data modify storage minecraft:hipochallenge SUPPORT_ATTRIBUTE_ARMOR_TOUGHNESS set value 0
    data modify storage minecraft:hipochallenge SUPPORT_ATTRIBUTE_SCALE set value 1
    data modify storage minecraft:hipochallenge SUPPORT_ATTRIBUTE_BURNING_TIME set value 1
    data modify storage minecraft:hipochallenge SUPPORT_ATTRIBUTE_EXPLOSION_KNOCKBACK_RESISTANCE set value 0

    # kit 1
    # kit 2
    # kit 3
    #
    # perk 1
    # perk 2
    # perk 3

# recon
    data modify storage minecraft:hipochallenge RECON_ATTRIBUTE_MAX_HEALTH set value 20
    data modify storage minecraft:hipochallenge RECON_ATTRIBUTE_ARMOR set value 0
    data modify storage minecraft:hipochallenge RECON_ATTRIBUTE_ARMOR_TOUGHNESS set value 0
    data modify storage minecraft:hipochallenge RECON_ATTRIBUTE_SCALE set value 1
    data modify storage minecraft:hipochallenge RECON_ATTRIBUTE_BURNING_TIME set value 1
    data modify storage minecraft:hipochallenge RECON_ATTRIBUTE_EXPLOSION_KNOCKBACK_RESISTANCE set value 0

    # kit 1
    # kit 2
    # kit 3
    #
    # perk 1
    # perk 2
    # perk 3

# assault
    data modify storage minecraft:hipochallenge ASSAULT_ATTRIBUTE_MAX_HEALTH set value 20
    data modify storage minecraft:hipochallenge ASSAULT_ATTRIBUTE_ARMOR set value 0
    data modify storage minecraft:hipochallenge ASSAULT_ATTRIBUTE_ARMOR_TOUGHNESS set value 0
    data modify storage minecraft:hipochallenge ASSAULT_ATTRIBUTE_SCALE set value 1
    data modify storage minecraft:hipochallenge ASSAULT_ATTRIBUTE_BURNING_TIME set value 1
    data modify storage minecraft:hipochallenge ASSAULT_ATTRIBUTE_EXPLOSION_KNOCKBACK_RESISTANCE set value 0

    # kit 1
    # kit 2
    # kit 3
    #
    # perk 1
    # perk 2
    # perk 3

#

## Text components

data modify storage minecraft:hipochallenge NO_COOLDOWN_TXT_COMPONENT set value '{"color":"yellow","text":"Un solo uso"}'