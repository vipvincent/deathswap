#actionbar/tw/prepare
execute if score *team_choose deathswap.setting matches 0 as @a[team=] run title @s actionbar [\
    {"text": "尚未加入隊伍","color": "gray"},{"text":" | ","color":"gray"},\
    {"text": "請等待管理員","color": "light_purple"}\
    ]
execute if score *team_choose deathswap.setting matches 1 as @a[team=] run title @s actionbar [\
    {"text": "未加入隊伍","color": "gray"},{"text":" | ","color":"gray"},\
    {"text": "請選擇隊伍","color": "light_purple"}\
]

execute as @a[team=solo] run title @s actionbar [\
    {"text": "已加入遊戲隊伍","color": "green"},{"text":" | ","color":"gray"},\
    {"text": "請等待開始遊戲","color": "light_purple"}\
]
execute as @a[team=red] run title @s actionbar [\
    {"text": "已加入紅隊","color": "red"},{"text":" | ","color":"gray"},\
    {"text": "請等待開始","color": "light_purple"}\
]
execute as @a[team=blue] run title @s actionbar [\
    {"text": "已加入藍隊","color": "blue"},{"text":" | ","color":"gray"},\
    {"text": "請等待開始","color": "light_purple"}\
]
execute as @a[team=yellow] run title @s actionbar [\
    {"text": "已加入黃隊","color": "yellow"},{"text":" | ","color":"gray"},\
    {"text": "請等待開始","color": "light_purple"}\
]
execute as @a[team=green] run title @s actionbar [\
    {"text": "已加入綠隊","color": "green"},{"text":" | ","color":"gray"},\
    {"text": "請等待開始","color": "light_purple"}\
]
execute as @a[team=spectator] run title @s actionbar [\
    {"text": "已加入旁觀","color": "gray"},{"text":" | ","color":"gray"},\
    {"text": "請等待開始","color": "light_purple"}\
]