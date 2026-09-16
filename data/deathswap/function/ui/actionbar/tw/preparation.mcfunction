#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/actionbar/tw/prepare.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#notadmin
execute if score *team_choose deathswap.setting matches 0 run title @a[tag=notadmin,team=] actionbar [\
    {"text": "尚未加入隊伍","color": "gray"},{"text":" | ","color":"gray"},\
    {"text": "請等待管理員","color": "gold"}\
    ]
execute if score *team_choose deathswap.setting matches 1 run title @a[tag=notadmin,team=] actionbar [\
    {"text": "未加入隊伍","color": "gray"},{"text":" | ","color":"gray"},\
    {"text": "請選擇隊伍","color": "gold"}\
]
title @a[tag=notadmin,team=solo] actionbar [\
    {"text": "已加入遊戲隊伍","color": "green"},{"text":" | ","color":"gray"},\
    {"text": "請等待開始遊戲","color": "gold"}\
]
title @a[tag=notadmin,team=red] actionbar [\
    {"text": "已加入紅隊","color": "red"},{"text":" | ","color":"gray"},\
    {"text": "請等待開始遊戲","color": "gold"}\
]
title @a[tag=notadmin,team=blue] actionbar [\
    {"text": "已加入藍隊","color": "blue"},{"text":" | ","color":"gray"},\
    {"text": "請等待開始遊戲","color": "gold"}\
]
title @a[tag=notadmin,team=green] actionbar [\
    {"text": "已加入綠隊","color": "green"},{"text":" | ","color":"gray"},\
    {"text": "請等待開始遊戲","color": "gold"}\
]
title @a[tag=notadmin,team=yellow] actionbar [\
    {"text": "已加入黃隊","color": "yellow"},{"text":" | ","color":"gray"},\
    {"text": "請等待開始遊戲","color": "gold"}\
]
title @a[tag=notadmin,team=spectator] actionbar [\
    {"text": "已加入旁觀","color": "gray"},{"text":" | ","color":"gray"},\
    {"text": "請等待開始遊戲","color": "gold"}\
]

#admin/survival
title @a[tag=admin,gamemode=!creative,team=] actionbar [\
    {"text": "尚未加入隊伍","color": "gray"},{"text":" | ","color":"gray"},\
    {"text": "請打開物品欄以進行設定","color": "gold"}\
    ]
title @a[tag=admin,gamemode=!creative,team=solo] actionbar [\
    {"text": "已加入遊戲隊伍","color": "green"},{"text":" | ","color":"gray"},\
    {"text": "請打開物品欄以進行設定","color": "gold"}\
]
title @a[tag=admin,gamemode=!creative,team=red] actionbar [\
    {"text": "已加入紅隊","color": "red"},{"text":" | ","color":"gray"},\
    {"text": "請打開物品欄以進行設定","color": "gold"}\
]
title @a[tag=admin,gamemode=!creative,team=blue] actionbar [\
    {"text": "已加入藍隊","color": "blue"},{"text":" | ","color":"gray"},\
    {"text": "請打開物品欄以進行設定","color": "gold"}\
]
title @a[tag=admin,gamemode=!creative,team=green] actionbar [\
    {"text": "已加入綠隊","color": "green"},{"text":" | ","color":"gray"},\
    {"text": "請打開物品欄以進行設定","color": "gold"}\
]
title @a[tag=admin,gamemode=!creative,team=yellow] actionbar [\
    {"text": "已加入黃隊","color": "yellow"},{"text":" | ","color":"gray"},\
    {"text": "請打開物品欄以進行設定","color": "gold"}\
]
title @a[tag=admin,gamemode=!creative,team=spectator] actionbar [\
    {"text": "已加入旁觀","color": "gray"},{"text":" | ","color":"gray"},\
    {"text": "請打開物品欄以進行設定","color": "gold"}\
]

#admin/survival
title @a[tag=admin,gamemode=creative,team=] actionbar [\
    {"text": "尚未加入隊伍","color": "gray"},{"text":" | ","color":"gray"},\
    {"text": "請使用設定書以進行設定","color": "gold"}\
    ]
title @a[tag=admin,gamemode=creative,team=solo] actionbar [\
    {"text": "已加入遊戲隊伍","color": "green"},{"text":" | ","color":"gray"},\
    {"text": "請使用設定書以進行設定","color": "gold"}\
]
title @a[tag=admin,gamemode=creative,team=red] actionbar [\
    {"text": "已加入紅隊","color": "red"},{"text":" | ","color":"gray"},\
    {"text": "請使用設定書以進行設定","color": "gold"}\
]
title @a[tag=admin,gamemode=creative,team=blue] actionbar [\
    {"text": "已加入藍隊","color": "blue"},{"text":" | ","color":"gray"},\
    {"text": "請使用設定書以進行設定","color": "gold"}\
]
title @a[tag=admin,gamemode=creative,team=green] actionbar [\
    {"text": "已加入綠隊","color": "green"},{"text":" | ","color":"gray"},\
    {"text": "請使用設定書以進行設定","color": "gold"}\
]
title @a[tag=admin,gamemode=creative,team=yellow] actionbar [\
    {"text": "已加入黃隊","color": "yellow"},{"text":" | ","color":"gray"},\
    {"text": "請使用設定書以進行設定","color": "gold"}\
]
title @a[tag=admin,gamemode=creative,team=spectator] actionbar [\
    {"text": "已加入旁觀","color": "gray"},{"text":" | ","color":"gray"},\
    {"text": "請使用設定書以進行設定","color": "gold"}\
]