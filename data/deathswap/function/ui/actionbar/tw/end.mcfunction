#actionbar/tw/end
execute if score *end deathswap.status matches -1 run title @a actionbar [\
    {"text": "沒有任何人獲勝","color": "light_purple"},{"text":" | ","color":"gray"},\
    {"text": "感謝遊玩","color":"aqua"}\
]
execute if score *end deathswap.status matches 0 run title @a actionbar [\
    {"selector":"@a[tag=win]","color": "gold"}," 獲勝",{"text":" | ","color":"gray"},\
    {"text": "感謝遊玩","color":"aqua"}\
]
execute if score *end deathswap.status matches 1 run title @a actionbar [\
    {"text": "紅隊獲勝","color": "red"},{"text":" | ","color":"gray"},\
    {"text": "感謝遊玩","color":"aqua"}\
]
execute if score *end deathswap.status matches 2 run title @a actionbar [\
    {"text": "藍隊獲勝","color": "blue"},{"text":" | ","color":"gray"},\
    {"text": "感謝遊玩","color":"aqua"}\
]
execute if score *end deathswap.status matches 3 run title @a actionbar [\
    {"text": "黃隊獲勝","color": "yellow"},{"text":" | ","color":"gray"},\
    {"text": "感謝遊玩","color":"aqua"}\
]
execute if score *end deathswap.status matches 4 run title @a actionbar [\
    {"text": "綠隊獲勝","color": "green"},{"text":" | ","color":"gray"},\
    {"text": "感謝遊玩","color":"aqua"}\
]
execute if score *end deathswap.status matches 5 run title @a actionbar [\
    {"text": "殺手 ","color": "dark_red"},{"selector":"@a[tag=win]","color": "dark_red"}," 獲勝",{"text":" | ","color":"gray"},\
    {"text": "感謝遊玩","color":"aqua"}\
]