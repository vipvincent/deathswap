#actionbar/tw/prepare
execute if score *team_choose deathswap.setting matches 0 as @a[team=] run title @s actionbar [\
    {"text": "Not Joined Team","color": "gray"},{"text":" | ","color":"gray"},\
    {"text": "Please Wait for Admin","color": "light_purple"}\
    ]
execute if score *team_choose deathswap.setting matches 1 as @a[team=] run title @s actionbar [\
    {"text": "Not Joined Team","color": "gray"},{"text":" | ","color":"gray"},\
    {"text": "Please Choose Team","color": "light_purple"}\
]

execute as @a[team=solo] run title @s actionbar [\
    {"text": "Joined Game Team","color": "green"},{"text":" | ","color":"gray"},\
    {"text": "Please Wait for Start","color": "light_purple"}\
]
execute as @a[team=red] run title @s actionbar [\
    {"text": "Joined Red Team","color": "red"},{"text":" | ","color":"gray"},\
    {"text": "Please Wait for Start","color": "light_purple"}\
]
execute as @a[team=blue] run title @s actionbar [\
    {"text": "Joined Blue Team","color": "blue"},{"text":" | ","color":"gray"},\
    {"text": "Please Wait for Start","color": "light_purple"}\
]
execute as @a[team=yellow] run title @s actionbar [\
    {"text": "Joined Yellow Team","color": "yellow"},{"text":" | ","color":"gray"},\
    {"text": "Please Wait for Start","color": "light_purple"}\
]
execute as @a[team=green] run title @s actionbar [\
    {"text": "Joined Green Team","color": "green"},{"text":" | ","color":"gray"},\
    {"text": "Please Wait for Start","color": "light_purple"}\
]
execute as @a[team=spectator] run title @s actionbar [\
    {"text": "Joined Spectator","color": "gray"},{"text":" | ","color":"gray"},\
    {"text": "Please Wait for Start","color": "light_purple"}\
]