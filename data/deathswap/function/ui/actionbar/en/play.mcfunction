#actionbar/tw/play

#spectator
title @a[team=spectator] actionbar [\
    {"text":"Spectator","color": "gray"}\
]

#solo - player
execute if score *mode deathswap.setting matches 1 run title @a[team=solo,tag=player,tag=!killer] actionbar [\
    {"text":"Survive","color": "dark_green"}\
]

#solo - eliminated
execute if score *mode deathswap.setting matches 1 run title @a[team=solo,tag=eliminated,tag=!killer] actionbar [\
    {"text":"Eliminated","color": "light_purple"}\
]

#team - player
execute if score *mode deathswap.setting matches 2 run title @a[team=red,tag=player,tag=!killer] actionbar [\
    {"text":"Red Team","color":"red"},{"text":" | ","color": "gray"},\
    {"text":"Survive","color":"dark_green"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=blue,tag=player,tag=!killer] actionbar [\
    {"text":"Blue Team","color":"blue"},{"text":" | ","color": "gray"},\
    {"text":"Survive","color":"dark_green"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=yellow,tag=player,tag=!killer] actionbar [\
    {"text":"Yellow Team","color":"yellow"},{"text":" | ","color": "gray"},\
    {"text":"Survive","color":"dark_green"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=green,tag=player,tag=!killer] actionbar [\
    {"text":"Green Team","color":"green"},{"text":" | ","color": "gray"},\
    {"text":"Survive","color":"dark_green"}\
]

#team - eliminated
execute if score *mode deathswap.setting matches 2 run title @a[team=red,tag=eliminated,tag=!killer] actionbar [\
    {"text":"Red Team","color":"red"},{"text":" | ","color": "gray"},\
    {"text":"Eliminated","color":"light_purple"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=blue,tag=eliminated,tag=!killer] actionbar [\
    {"text":"Blue Team","color":"blue"},{"text":" | ","color": "gray"},\
    {"text":"Eliminated","color":"light_purple"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=yellow,tag=eliminated,tag=!killer] actionbar [\
    {"text":"Yellow Team","color":"yellow"},{"text":" | ","color": "gray"},\
    {"text":"Eliminated","color":"light_purple"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=green,tag=eliminated,tag=!killer] actionbar [\
    {"text":"Green Team","color":"green"},{"text":" | ","color": "gray"},\
    {"text":"Eliminated","color":"light_purple"}\
]

#team - killer+player
execute if score *mode deathswap.setting matches 2 run title @a[team=red,tag=player,tag=killer] actionbar [\
    {"text":"Killer","color":"dark_red"},{"text":" | ","color": "gray"},\
    {"text":"Red Team","color":"red"},{"text":" | ","color": "gray"},\
    {"text":"Survive","color":"dark_green"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=blue,tag=player,tag=killer] actionbar [\
    {"text":"Killer","color":"dark_red"},{"text":" | ","color": "gray"},\
    {"text":"Blue Team","color":"blue"},{"text":" | ","color": "gray"},\
    {"text":"Survive","color":"dark_green"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=yellow,tag=player,tag=killer] actionbar [\
    {"text":"Killer","color":"dark_red"},{"text":" | ","color": "gray"},\
    {"text":"Yellow Team","color":"yellow"},{"text":" | ","color": "gray"},\
    {"text":"Survive","color":"dark_green"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=green,tag=player,tag=killer] actionbar [\
    {"text":"Killer","color":"dark_red"},{"text":" | ","color": "gray"},\
    {"text":"Green Team","color":"green"},{"text":" | ","color": "gray"},\
    {"text":"Survive","color":"dark_green"}\
]

#team - killer+eliminated
execute if score *mode deathswap.setting matches 2 run title @a[team=red,tag=eliminated,tag=killer] actionbar [\
    {"text":"Killer","color":"dark_red"},{"text":" | ","color": "gray"},\
    {"text":"Red Team","color":"red"},{"text":" | ","color": "gray"},\
    {"text":"Eliminated","color":"light_purple"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=blue,tag=eliminated,tag=killer] actionbar [\
    {"text":"Killer","color":"dark_red"},{"text":" | ","color": "gray"},\
    {"text":"Blue Team","color":"blue"},{"text":" | ","color": "gray"},\
    {"text":"Eliminated","color":"light_purple"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=yellow,tag=eliminated,tag=killer] actionbar [\
    {"text":"Killer","color":"dark_red"},{"text":" | ","color": "gray"},\
    {"text":"Yellow Team","color":"yellow"},{"text":" | ","color": "gray"},\
    {"text":"Eliminated","color":"light_purple"}\
]
execute if score *mode deathswap.setting matches 2 run title @a[team=green,tag=eliminated,tag=killer] actionbar [\
    {"text":"Killer","color":"dark_red"},{"text":" | ","color": "gray"},\
    {"text":"Green Team","color":"green"},{"text":" | ","color": "gray"},\
    {"text":"Eliminated","color":"light_purple"}\
]
