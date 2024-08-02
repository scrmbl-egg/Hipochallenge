scoreboard objectives add local dummy
execute store result score $game_state local run data get storage minecraft:hipochallenge current_game_state

# Display selection (sub)title
execute if score $game_state local matches 1..4 run title @a title ""
execute if score $game_state local matches 1 run title @a subtitle {"color":"aqua","fallback":"Select your team","translate":"hc.selection.select_team"}
execute if score $game_state local matches 2 run title @a subtitle {"color":"aqua","fallback":"Select your team's color","translate":"hc.selection.select_team_color"}
execute if score $game_state local matches 3 run title @a subtitle {"color":"aqua","fallback":"Select your class","translate":"hc.selection.select_class"}

scoreboard objectives remove local