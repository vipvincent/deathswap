#wait/wait_start
function deathswap:ui/page/update

#check lobby
execute unless entity @e[type=marker,tag=lobby] if score *language deathswap.setting matches 1 run tellraw @s [{"text": "§cThe Game Lobby has not been set up yet!"}]
execute unless entity @e[type=marker,tag=lobby] if score *language deathswap.setting matches 2 run tellraw @s [{"text": "§c尚未設置遊戲大廳！"}]
execute unless entity @e[type=marker,tag=lobby] at @s run playsound entity.villager.no master @s ~ ~ ~
execute unless entity @e[type=marker,tag=lobby] run return fail

#check player mode/solo_team
execute if score *mode deathswap.setting matches 1 unless score *solo_count deathswap.status matches 2.. if score *language deathswap.setting matches 1 run tellraw @s [{"text": "§cAt least two players in Game Team to start the game!"}]
execute if score *mode deathswap.setting matches 1 unless score *solo_count deathswap.status matches 2.. if score *language deathswap.setting matches 2 run tellraw @s [{"text": "§c至少需要兩位玩家在遊戲隊伍裡才能開始遊戲！"}]
execute if score *mode deathswap.setting matches 1 unless score *solo_count deathswap.status matches 2.. at @s run playsound entity.villager.no master @s ~ ~ ~
execute if score *mode deathswap.setting matches 1 unless score *solo_count deathswap.status matches 2.. run return fail

#check player mode/team_battle
execute if score *mode deathswap.setting matches 2 unless score *team_count deathswap.status matches 2.. if score *language deathswap.setting matches 1 run tellraw @s [{"text": "§cAt least two teams need players to start game!"}]
execute if score *mode deathswap.setting matches 2 unless score *team_count deathswap.status matches 2.. if score *language deathswap.setting matches 2 run tellraw @s [{"text": "§c至少需要兩隊有玩家才能開始遊戲！"}]
execute if score *mode deathswap.setting matches 2 unless score *team_count deathswap.status matches 2.. at @s run playsound entity.villager.no master @s ~ ~ ~
execute if score *mode deathswap.setting matches 2 unless score *team_count deathswap.status matches 2.. run return fail

#check ok
#---
scoreboard players set *game deathswap.status 1
scoreboard players set *wait deathswap.timer 0
scoreboard players reset @a deathswap.death

#display_sidebar
scoreboard objectives setdisplay list deathswap.health
scoreboard objectives setdisplay below_name deathswap.health
scoreboard objectives setdisplay sidebar deathswap.display.play_status

tellraw @a "-----------------------------------------------------"
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    "",{text: "Death Swap",color:gold},{text:" | ",color:gray},\
    {text:"The Game is loading..."}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    "",{text: "Death Swap",color:gold},{text:" | ",color:gray},\
    {text:"遊戲載入中..."}\
]

execute as @a at @s run playsound block.note_block.bass master @s ~ ~ ~

bossbar set deathswap:wait visible true
