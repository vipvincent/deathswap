#ui/text_display

#lobby
execute as @e[tag=lobby_text] at @s unless entity @e[tag=lobby,distance=..0.5] run kill @s
execute as @e[tag=lobby] at @s unless entity @e[tag=lobby_text,distance=..0.5] run summon text_display ~ ~ ~ {Tags:["lobby_text"],billboard:center,alignment:center}

#lobby language
execute if score *language deathswap.setting matches 1 run data modify entity @e[tag=lobby_text,limit=1] text set value {text:"Game Lobby",color:"yellow"}
execute if score *language deathswap.setting matches 2 run data modify entity @e[tag=lobby_text,limit=1] text set value {text:"遊戲大廳",color:"yellow"}