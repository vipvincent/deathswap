#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/actionbar/tw/end.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

execute if data storage deathswap:temp {end:"all_fail"} run title @a actionbar [\
    {"text": "沒有任何人獲勝","color": "light_purple"},{"text":" | ","color":"gray"},\
    {"text": "感謝遊玩","color":"aqua"}\
]
execute if data storage deathswap:temp {end:"solo_win"} run title @a actionbar [\
    {"selector":"@a[tag=win]","color": "gold"}," 獲勝",{"text":" | ","color":"gray"},\
    {"text": "感謝遊玩","color":"aqua"}\
]
execute if data storage deathswap:temp {end:"red_win"} run title @a actionbar [\
    {"text": "紅隊獲勝","color": "red"},{"text":" | ","color":"gray"},\
    {"text": "感謝遊玩","color":"aqua"}\
]
execute if data storage deathswap:temp {end:"blue_win"} run title @a actionbar [\
    {"text": "藍隊獲勝","color": "blue"},{"text":" | ","color":"gray"},\
    {"text": "感謝遊玩","color":"aqua"}\
]
execute if data storage deathswap:temp {end:"green_win"} run title @a actionbar [\
    {"text": "綠隊獲勝","color": "green"},{"text":" | ","color":"gray"},\
    {"text": "感謝遊玩","color":"aqua"}\
]
execute if data storage deathswap:temp {end:"yellow_win"} run title @a actionbar [\
    {"text": "黃隊獲勝","color": "yellow"},{"text":" | ","color":"gray"},\
    {"text": "感謝遊玩","color":"aqua"}\
]
execute if data storage deathswap:temp {end:"killer_win"} run title @a actionbar [\
    {"text": "殺手 ","color": "dark_red"},{"selector":"@a[tag=win]","color": "dark_red"}," 獲勝",{"text":" | ","color":"gray"},\
    {"text": "感謝遊玩","color":"aqua"}\
]