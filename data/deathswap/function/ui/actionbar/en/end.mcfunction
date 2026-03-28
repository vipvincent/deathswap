#actionbar/tw/end
execute if score *end deathswap.status matches -1 run title @a actionbar [\
    {"text": "No One Win","color": "light_purple"},{"text":" | ","color":"gray"},\
    {"text": "Thanks for playing","color":"aqua"}\
]
execute if score *end deathswap.status matches 0 run title @a actionbar [\
    {"selector":"@a[tag=win]","color": "gold"}," Win",{"text":" | ","color":"gray"},\
    {"text": "Thanks for playing","color":"aqua"}\
]
execute if score *end deathswap.status matches 1 run title @a actionbar [\
    {"text": "Red Team Win","color": "red"},{"text":" | ","color":"gray"},\
    {"text": "Thanks for playing","color":"aqua"}\
]
execute if score *end deathswap.status matches 2 run title @a actionbar [\
    {"text": "Blue Team Win","color": "blue"},{"text":" | ","color":"gray"},\
    {"text": "Thanks for playing","color":"aqua"}\
]
execute if score *end deathswap.status matches 3 run title @a actionbar [\
    {"text": "Yellow Team Win","color": "yellow"},{"text":" | ","color":"gray"},\
    {"text": "Thanks for playing","color":"aqua"}\
]
execute if score *end deathswap.status matches 4 run title @a actionbar [\
    {"text": "Green Team Win","color": "green"},{"text":" | ","color":"gray"},\
    {"text": "Thanks for playing","color":"aqua"}\
]
execute if score *end deathswap.status matches 5 run title @a actionbar [\
    {"text": "Killer ","color": "dark_red"},{"selector":"@a[tag=win]","color": "dark_red"}," Win",{"text":" | ","color":"gray"},\
    {"text": "Thanks for playing","color":"aqua"}\
]