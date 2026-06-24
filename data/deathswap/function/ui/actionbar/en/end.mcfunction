#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/actionbar/en/end.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

execute if data storage deathswap:temp {end:"all_fail"} run title @a actionbar [\
    {"text": "No One Win","color": "light_purple"},{"text":" | ","color":"gray"},\
    {"text": "Thanks for playing","color":"aqua"}\
]
execute if data storage deathswap:temp {end:"solo_win"} run title @a actionbar [\
    {"selector":"@a[tag=win]","color": "gold"}," Win",{"text":" | ","color":"gray"},\
    {"text": "Thanks for playing","color":"aqua"}\
]
execute if data storage deathswap:temp {end:"red_win"} run title @a actionbar [\
    {"text": "Team Red Win","color": "red"},{"text":" | ","color":"gray"},\
    {"text": "Thanks for playing","color":"aqua"}\
]
execute if data storage deathswap:temp {end:"blue_win"} run title @a actionbar [\
    {"text": "Team Blue Win","color": "blue"},{"text":" | ","color":"gray"},\
    {"text": "Thanks for playing","color":"aqua"}\
]
execute if data storage deathswap:temp {end:"green_win"} run title @a actionbar [\
    {"text": "Team Green Win","color": "green"},{"text":" | ","color":"gray"},\
    {"text": "Thanks for playing","color":"aqua"}\
]
execute if data storage deathswap:temp {end:"yellow_win"} run title @a actionbar [\
    {"text": "Team Yellow Win","color": "yellow"},{"text":" | ","color":"gray"},\
    {"text": "Thanks for playing","color":"aqua"}\
]
execute if data storage deathswap:temp {end:"killer_win"} run title @a actionbar [\
    {"text": "Killer ","color": "dark_red"},{"selector":"@a[tag=win]","color": "dark_red"}," Win",{"text":" | ","color":"gray"},\
    {"text": "Thanks for playing","color":"aqua"}\
]