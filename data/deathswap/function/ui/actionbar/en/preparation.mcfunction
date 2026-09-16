#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/actionbar/en/prepare.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#notadmin
execute if score *team_choose deathswap.setting matches 0 run title @a[tag=notadmin,team=] actionbar [\
    {"text": "Not Joined Team","color": "gray"},{"text":" | ","color":"gray"},\
    {"text": "Please Wait for Admin","color": "gold"}\
    ]
execute if score *team_choose deathswap.setting matches 1 run title @a[tag=notadmin,team=] actionbar [\
    {"text": "Not Joined Team","color": "gray"},{"text":" | ","color":"gray"},\
    {"text": "Please Choose the Team","color": "gold"}\
]
title @a[tag=notadmin,team=solo] actionbar [\
    {"text": "Joined Game Team","color": "green"},{"text":" | ","color":"gray"},\
    {"text": "Please Wait for Start","color": "gold"}\
]
title @a[tag=notadmin,team=red] actionbar [\
    {"text": "Joined Team Red","color": "red"},{"text":" | ","color":"gray"},\
    {"text": "Please Wait for Start","color": "gold"}\
]
title @a[tag=notadmin,team=blue] actionbar [\
    {"text": "Joined Team Blue","color": "blue"},{"text":" | ","color":"gray"},\
    {"text": "Please Wait for Start","color": "gold"}\
]
title @a[tag=notadmin,team=green] actionbar [\
    {"text": "Joined Team Green","color": "green"},{"text":" | ","color":"gray"},\
    {"text": "Please Wait for Start","color": "gold"}\
]
title @a[tag=notadmin,team=yellow] actionbar [\
    {"text": "Joined Team Yellow","color": "yellow"},{"text":" | ","color":"gray"},\
    {"text": "Please Wait for Start","color": "gold"}\
]
title @a[tag=notadmin,team=spectator] actionbar [\
    {"text": "Joined Spectator","color": "gray"},{"text":" | ","color":"gray"},\
    {"text": "Please Wait for Start","color": "gold"}\
]

#admin/survival
title @a[tag=admin,gamemode=!creative,team=] actionbar [\
    {"text": "Not Joined Team","color": "gray"},{"text":" | ","color":"gray"},\
    {"text": "Open Inventory to Setting","color": "gold"}\
]
title @a[tag=admin,gamemode=!creative,team=solo] actionbar [\
    {"text": "Joined Game Team","color": "green"},{"text":" | ","color":"gray"},\
    {"text": "Open Inventory to Setting","color": "gold"}\
]
title @a[tag=admin,gamemode=!creative,team=red] actionbar [\
    {"text": "Joined Team Red","color": "red"},{"text":" | ","color":"gray"},\
    {"text": "Open Inventory to Setting","color": "gold"}\
]
title @a[tag=admin,gamemode=!creative,team=blue] actionbar [\
    {"text": "Joined Team Blue","color": "blue"},{"text":" | ","color":"gray"},\
    {"text": "Open Inventory to Setting","color": "gold"}\
]
title @a[tag=admin,gamemode=!creative,team=green] actionbar [\
    {"text": "Joined Team Green","color": "green"},{"text":" | ","color":"gray"},\
    {"text": "Open Inventory to Setting","color": "gold"}\
]
title @a[tag=admin,gamemode=!creative,team=yellow] actionbar [\
    {"text": "Joined Team Yellow","color": "yellow"},{"text":" | ","color":"gray"},\
    {"text": "Open Inventory to Setting","color": "gold"}\
]
title @a[tag=admin,gamemode=!creative,team=spectator] actionbar [\
    {"text": "Joined Spectator","color": "gray"},{"text":" | ","color":"gray"},\
    {"text": "Open Inventory to Setting","color": "gold"}\
]

#admin/creative
title @a[tag=admin,gamemode=creative,team=] actionbar [\
    {"text": "Not Joined Team","color": "gray"},{"text":" | ","color":"gray"},\
    {"text": "Use Book for Configuration","color": "gold"}\
]
title @a[tag=admin,gamemode=creative,team=solo] actionbar [\
    {"text": "Joined Game Team","color": "green"},{"text":" | ","color":"gray"},\
    {"text": "Use Book for Configuration","color": "gold"}\
]
title @a[tag=admin,gamemode=creative,team=red] actionbar [\
    {"text": "Joined Team Red","color": "red"},{"text":" | ","color":"gray"},\
    {"text": "Use Book for Configuration","color": "gold"}\
]
title @a[tag=admin,gamemode=creative,team=blue] actionbar [\
    {"text": "Joined Team Blue","color": "blue"},{"text":" | ","color":"gray"},\
    {"text": "Use Book for Configuration","color": "gold"}\
]
title @a[tag=admin,gamemode=creative,team=green] actionbar [\
    {"text": "Joined Team Green","color": "green"},{"text":" | ","color":"gray"},\
    {"text": "Use Book for Configuration","color": "gold"}\
]
title @a[tag=admin,gamemode=creative,team=yellow] actionbar [\
    {"text": "Joined Team Yellow","color": "yellow"},{"text":" | ","color":"gray"},\
    {"text": "Use Book for Configuration","color": "gold"}\
]
title @a[tag=admin,gamemode=creative,team=spectator] actionbar [\
    {"text": "Joined Spectator","color": "gray"},{"text":" | ","color":"gray"},\
    {"text": "Use Book for Configuration","color": "gold"}\
]