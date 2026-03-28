#actionbar/tw/play

#spectator
title @a[team=spectator] actionbar [\
    {"text":"旁觀","color": "gray"}\
]

#solo - player
execute if score *mode deathswap.setting matches 1 run title @a[team=solo,tag=player,tag=!killer] actionbar [\
    {"text":"存活","color": "dark_green"}\
]

#solo - eliminated
execute if score *mode deathswap.setting matches 1 run title @a[team=solo,tag=eliminated,tag=!killer] actionbar [\
    {"text":"已淘汰","color": "light_purple"}\
]

#team - player
execute if score *mode deathswap.setting matches 2 run title @a[team=red,tag=player,tag=!killer] actionbar [\
    {"text":"紅隊","color":"red"},{"text":" | ","color": "gray"},\
    {"text":"存活","color":"dark_green"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=blue,tag=player,tag=!killer] actionbar [\
    {"text":"藍隊","color":"blue"},{"text":" | ","color": "gray"},\
    {"text":"存活","color":"dark_green"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=yellow,tag=player,tag=!killer] actionbar [\
    {"text":"黃隊","color":"yellow"},{"text":" | ","color": "gray"},\
    {"text":"存活","color":"dark_green"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=green,tag=player,tag=!killer] actionbar [\
    {"text":"綠隊","color":"green"},{"text":" | ","color": "gray"},\
    {"text":"存活","color":"dark_green"}\
]

#team - eliminated
execute if score *mode deathswap.setting matches 2 run title @a[team=red,tag=eliminated,tag=!killer] actionbar [\
    {"text":"紅隊","color":"red"},{"text":" | ","color": "gray"},\
    {"text":"已淘汰","color":"light_purple"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=blue,tag=eliminated,tag=!killer] actionbar [\
    {"text":"藍隊","color":"blue"},{"text":" | ","color": "gray"},\
    {"text":"已淘汰","color":"light_purple"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=yellow,tag=eliminated,tag=!killer] actionbar [\
    {"text":"黃隊","color":"yellow"},{"text":" | ","color": "gray"},\
    {"text":"已淘汰","color":"light_purple"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=green,tag=eliminated,tag=!killer] actionbar [\
    {"text":"綠隊","color":"green"},{"text":" | ","color": "gray"},\
    {"text":"已淘汰","color":"light_purple"}\
]

#team - killer+player
execute if score *mode deathswap.setting matches 2 run title @a[team=red,tag=player,tag=killer] actionbar [\
    {"text":"殺手","color":"dark_red"},{"text":" | ","color": "gray"},\
    {"text":"紅隊","color":"red"},{"text":" | ","color": "gray"},\
    {"text":"存活","color":"dark_green"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=blue,tag=player,tag=killer] actionbar [\
    {"text":"殺手","color":"dark_red"},{"text":" | ","color": "gray"},\
    {"text":"藍隊","color":"blue"},{"text":" | ","color": "gray"},\
    {"text":"存活","color":"dark_green"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=yellow,tag=player,tag=killer] actionbar [\
    {"text":"殺手","color":"dark_red"},{"text":" | ","color": "gray"},\
    {"text":"黃隊","color":"yellow"},{"text":" | ","color": "gray"},\
    {"text":"存活","color":"dark_green"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=green,tag=player,tag=killer] actionbar [\
    {"text":"殺手","color":"dark_red"},{"text":" | ","color": "gray"},\
    {"text":"綠隊","color":"green"},{"text":" | ","color": "gray"},\
    {"text":"存活","color":"dark_green"}\
]

#team - killer+eliminated
execute if score *mode deathswap.setting matches 2 run title @a[team=red,tag=eliminated,tag=killer] actionbar [\
    {"text":"殺手","color":"dark_red"},{"text":" | ","color": "gray"},\
    {"text":"紅隊","color":"red"},{"text":" | ","color": "gray"},\
    {"text":"已淘汰","color":"light_purple"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=blue,tag=eliminated,tag=killer] actionbar [\
    {"text":"殺手","color":"dark_red"},{"text":" | ","color": "gray"},\
    {"text":"藍隊","color":"blue"},{"text":" | ","color": "gray"},\
    {"text":"已淘汰","color":"light_purple"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=yellow,tag=eliminated,tag=killer] actionbar [\
    {"text":"殺手","color":"dark_red"},{"text":" | ","color": "gray"},\
    {"text":"黃隊","color":"yellow"},{"text":" | ","color": "gray"},\
    {"text":"已淘汰","color":"light_purple"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=green,tag=eliminated,tag=killer] actionbar [\
    {"text":"殺手","color":"dark_red"},{"text":" | ","color": "gray"},\
    {"text":"綠隊","color":"green"},{"text":" | ","color": "gray"},\
    {"text":"已淘汰","color":"light_purple"}\
]
