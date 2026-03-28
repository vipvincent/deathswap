#play/boosbar

#visable
execute if score *swap_bossbar deathswap.setting matches 0 run bossbar set deathswap:swap_countdown players @a[tag=spectator]
execute if score *swap_bossbar deathswap.setting matches 1 run bossbar set deathswap:swap_countdown players @a

#name/en
execute if score *arena deathswap.setting matches 0..1 if score *swap_bossbar deathswap.setting matches 0 if score *language deathswap.setting matches 1 run bossbar set deathswap:swap_countdown name [\
    "[Spectator] ","Swap Countdown: ",\
    {score:{name: "*swap_countdown",objective: "deathswap.timer"}},{text: "s"}\
]

execute if score *arena deathswap.setting matches 0..1 if score *swap_bossbar deathswap.setting matches 1 if score *language deathswap.setting matches 1 run bossbar set deathswap:swap_countdown name [\
    "Swap Countdown: ",\
    {score:{name: "*swap_countdown",objective: "deathswap.timer"}},{text: "s"}\
]

#name/tw
execute if score *arena deathswap.setting matches 0..1 if score *swap_bossbar deathswap.setting matches 0 if score *language deathswap.setting matches 2 run bossbar set deathswap:swap_countdown name [\
    "[旁觀者] ","交換倒數：",\
    {score:{name: "*swap_countdown",objective: "deathswap.timer"}},{text: "秒"}\
]
execute if score *arena deathswap.setting matches 0..1 if score *swap_bossbar deathswap.setting matches 1 if score *language deathswap.setting matches 2 run bossbar set deathswap:swap_countdown name [\
    "交換倒數：",\
    {score:{name: "*swap_countdown",objective: "deathswap.timer"}},{text: "秒"}\
]

#store value/max
execute store result bossbar deathswap:swap_countdown max run scoreboard players get *swap_time deathswap.status
execute store result bossbar deathswap:swap_countdown value run scoreboard players get *swap_countdown deathswap.timer