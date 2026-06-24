#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/sidebar/loading.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#shared_object
function deathswap:ui/sidebar/shared_object {score_objectives:"deathswap.display.loading"}

#---
#loading_time
scoreboard players set *loading_time deathswap.display.loading -1

#loading_time/loading
execute if score *language deathswap.setting matches 1 if score *game deathswap.status matches 1 if score *loading deathswap.timer matches 1..299 run \
scoreboard players display name *loading_time deathswap.display.loading ["",\
    {"text":"System is preparing..."}\
]
execute if score *language deathswap.setting matches 1 if score *game deathswap.status matches 1 if score *loading deathswap.timer matches 300..399 run \
scoreboard players display name *loading_time deathswap.display.loading ["",\
    {"text":"Game is starting..."}\
]
execute if score *language deathswap.setting matches 2 if score *game deathswap.status matches 1 if score *loading deathswap.timer matches 1..299 run \
scoreboard players display name *loading_time deathswap.display.loading ["",\
    {"text":"系統準備中..."}\
]
execute if score *language deathswap.setting matches 2 if score *game deathswap.status matches 1 if score *loading deathswap.timer matches 300..399 run \
scoreboard players display name *loading_time deathswap.display.loading ["",\
    {"text":"遊戲即將開始..."}\
]

#loading_time/arena_prepare
execute if score *language deathswap.setting matches 1 if score *arena deathswap.status matches 0 run \
scoreboard players display name *loading_time deathswap.display.loading ["",\
    {"text":"Arena Countdown: "},\
    {"score":{"name":"*arena","objective":"deathswap.timer"},"color":"green"},\
    {"text":"s","color":"green"}\
]
execute if score *language deathswap.setting matches 2 if score *arena deathswap.status matches 0 run \
scoreboard players display name *loading_time deathswap.display.loading ["",\
    {"text":"競技場倒數："},\
    {"score":{"name":"*arena","objective":"deathswap.timer"},"color":"green"},\
    {"text":"秒","color":"green"}\
]

#loading_time/arena_loading
execute if score *language deathswap.setting matches 1 if score *arena deathswap.status matches 1 if score *arena deathswap.timer matches 10..99 run \
scoreboard players display name *loading_time deathswap.display.loading ["",\
    {"text":"Arena is preparing..."}\
]
execute if score *language deathswap.setting matches 1 if score *arena deathswap.status matches 1 if score *arena deathswap.timer matches 100..999 run \
scoreboard players display name *loading_time deathswap.display.loading ["",\
    {"text":"Arena is starting..."}\
]
execute if score *language deathswap.setting matches 2 if score *arena deathswap.status matches 1 if score *arena deathswap.timer matches 10..99 run \
scoreboard players display name *loading_time deathswap.display.loading ["",\
    {"text":"競技場正在準備..."}\
]
execute if score *language deathswap.setting matches 2 if score *arena deathswap.status matches 1 if score *arena deathswap.timer matches 100..999 run \
scoreboard players display name *loading_time deathswap.display.loading ["",\
    {"text":"競技場即將開始..."}\
]