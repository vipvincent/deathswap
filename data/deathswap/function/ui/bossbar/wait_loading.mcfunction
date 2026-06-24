#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/bossbar/wait_loading.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#visable
bossbar set deathswap:wait players @a

#store value
execute store result bossbar deathswap:wait value run scoreboard players get *loading deathswap.timer

#name
execute if score *loading deathswap.timer matches 1 if score *language deathswap.setting matches 1 run bossbar set deathswap:wait name [\
    {text:"The system is being prepared...",color:aqua}\
]
execute if score *loading deathswap.timer matches 1 if score *language deathswap.setting matches 2 run bossbar set deathswap:wait name [\
    {text:"系統正在準備中...",color:aqua}\
]

execute if score *loading deathswap.timer matches 300 if score *language deathswap.setting matches 1 run bossbar set deathswap:wait name [\
    {text:"The Game is about to begin...",color:yellow}\
]
execute if score *loading deathswap.timer matches 300 if score *language deathswap.setting matches 2 run bossbar set deathswap:wait name [\
    {text:"遊戲即將開始...",color:yellow}\
]