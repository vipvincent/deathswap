#--------------------------------------------------
#Death Swap
#data/deathswap/function/prepare/start_game.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#return
execute unless entity @e[tag=lobby] run return run function deathswap:lib/return/no_lobby
execute if score *mode deathswap.setting matches 0 unless score *solo_count deathswap.status matches 2.. run return run function deathswap:lib/return/not_enough_players_solo
execute if score *mode deathswap.setting matches 1 unless score *team_count deathswap.status matches 2.. run return run function deathswap:lib/return/not_enough_players_team

#---
#set score
scoreboard players set *game deathswap.status 1
scoreboard players set *loading deathswap.timer 0
scoreboard players reset @a deathswap.death

#display_sidebar
scoreboard objectives setdisplay list deathswap.health
scoreboard objectives setdisplay below_name deathswap.health
scoreboard objectives setdisplay sidebar deathswap.display.loading

#text
tellraw @a "-----------------------------------------------------"
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"The Game is loading..."}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"遊戲載入中..."}\
]

#sound
execute as @a at @s run playsound block.note_block.bass master @s ~ ~ ~

