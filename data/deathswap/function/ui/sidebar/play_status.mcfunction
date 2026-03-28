#sidebar/play_status

#header & footer
scoreboard objectives modify deathswap.display.play_status displayname {"storage":"deathswap:storage_main","nbt":"ui.sidebar.name","interpret":true}
scoreboard players set *credits deathswap.display.play_status -2147483647
scoreboard players display name *credits deathswap.display.play_status {"storage":"deathswap:storage_main","nbt":"ui.sidebar.credits","interpret":true}
scoreboard players set *header_blank deathswap.display.play_status 2147483647
scoreboard players display name *header_blank deathswap.display.play_status ""
scoreboard players set *footer_blank deathswap.display.play_status -2147483646
scoreboard players display name *footer_blank deathswap.display.play_status ""

#---
#time
scoreboard players set *time_main deathswap.display.play_status -1

#time/round_time
execute if score *language deathswap.setting matches 1 unless score *arena deathswap.status matches 0..1 run \
scoreboard players display name *time_main deathswap.display.play_status ["",\
    {"text":"Round Time: "},\
    {"score":{"name":"*round_time","objective":"deathswap.timer"},"color":"green"},\
    {"text":"s","color":"green"}\
]
execute if score *language deathswap.setting matches 2 unless score *arena deathswap.status matches 0..1 run \
scoreboard players display name *time_main deathswap.display.play_status ["",\
    {"text":"回合時間："},\
    {"score":{"name":"*round_time","objective":"deathswap.timer"},"color":"green"},\
    {"text":"秒","color":"green"}\
]

#time/arena_prepare
execute if score *language deathswap.setting matches 1 if score *arena deathswap.status matches 0 run \
scoreboard players display name *time_main deathswap.display.play_status ["",\
    {"text":"Arena Countdown: "},\
    {"score":{"name":"*arena","objective":"deathswap.timer"},"color":"green"},\
    {"text":"s","color":"green"}\
]
execute if score *language deathswap.setting matches 2 if score *arena deathswap.status matches 0 run \
scoreboard players display name *time_main deathswap.display.play_status ["",\
    {"text":"競技場倒數："},\
    {"score":{"name":"*arena","objective":"deathswap.timer"},"color":"green"},\
    {"text":"秒","color":"green"}\
]

#time/wait
execute if score *language deathswap.setting matches 1 if score *game deathswap.status matches 1 if score *wait deathswap.timer matches 1..299 run \
scoreboard players display name *time_main deathswap.display.play_status ["",\
    {"text":"System is preparing..."}\
]
execute if score *language deathswap.setting matches 1 if score *game deathswap.status matches 1 if score *wait deathswap.timer matches 300..399 run \
scoreboard players display name *time_main deathswap.display.play_status ["",\
    {"text":"Game is starting..."}\
]
execute if score *language deathswap.setting matches 2 if score *game deathswap.status matches 1 if score *wait deathswap.timer matches 1..299 run \
scoreboard players display name *time_main deathswap.display.play_status ["",\
    {"text":"系統準備中..."}\
]
execute if score *language deathswap.setting matches 2 if score *game deathswap.status matches 1 if score *wait deathswap.timer matches 300..399 run \
scoreboard players display name *time_main deathswap.display.play_status ["",\
    {"text":"遊戲即將開始..."}\
]

#time/arena_wait
execute if score *language deathswap.setting matches 1 if score *arena deathswap.status matches 1 if score *arena deathswap.timer matches 10..99 run \
scoreboard players display name *time_main deathswap.display.play_status ["",\
    {"text":"Arena is preparing..."}\
]
execute if score *language deathswap.setting matches 1 if score *arena deathswap.status matches 1 if score *arena deathswap.timer matches 100..999 run \
scoreboard players display name *time_main deathswap.display.play_status ["",\
    {"text":"Arena is starting..."}\
]
execute if score *language deathswap.setting matches 2 if score *arena deathswap.status matches 1 if score *arena deathswap.timer matches 10..99 run \
scoreboard players display name *time_main deathswap.display.play_status ["",\
    {"text":"競技場正在準備..."}\
]
execute if score *language deathswap.setting matches 2 if score *arena deathswap.status matches 1 if score *arena deathswap.timer matches 100..999 run \
scoreboard players display name *time_main deathswap.display.play_status ["",\
    {"text":"競技場即將開始..."}\
]

#---
#blank
scoreboard players set *blank_1 deathswap.display.play_status -10
scoreboard players display name *blank_1 deathswap.display.play_status ""

#solo
execute if score *mode deathswap.setting matches 2 run scoreboard players reset *solo
execute if score *mode deathswap.setting matches 1 run scoreboard players set *solo deathswap.display.play_status -11

execute if score *mode deathswap.setting matches 1 if score *language deathswap.setting matches 1 run \
scoreboard players display name *solo deathswap.display.play_status [\
    {"text":"Remaining Players: "},\
    {"score":{"name":"*solo_count","objective":"deathswap.status"},"color":"green"}\
]

execute if score *mode deathswap.setting matches 1 if score *language deathswap.setting matches 2 run \
scoreboard players display name *solo deathswap.display.play_status [\
    {"text":"剩餘玩家數："},\
    {"score":{"name":"*solo_count","objective":"deathswap.status"},"color":"green"}\
]


#team
execute if score *mode deathswap.setting matches 1 run scoreboard players reset *team_red
execute if score *mode deathswap.setting matches 1 run scoreboard players reset *team_blue
execute if score *mode deathswap.setting matches 1 run scoreboard players reset *team_yellow
execute if score *mode deathswap.setting matches 1 run scoreboard players reset *team_green
execute if score *mode deathswap.setting matches 2 run scoreboard players set *team_red deathswap.display.play_status -11
execute if score *mode deathswap.setting matches 2 run scoreboard players set *team_blue deathswap.display.play_status -12
execute if score *mode deathswap.setting matches 2 run scoreboard players set *team_yellow deathswap.display.play_status -13
execute if score *mode deathswap.setting matches 2 run scoreboard players set *team_green deathswap.display.play_status -14

#team/en
execute if score *mode deathswap.setting matches 2 if score *language deathswap.setting matches 1 \
if score *red_count deathswap.status matches 1.. run scoreboard players display name *team_red deathswap.display.play_status ["",\
    {"text":"R","color":"red"},{"text":" Red: "},\
    {"score":{"name":"*red_count","objective":"deathswap.status"},"color":"green"}\
]
execute if score *mode deathswap.setting matches 2 if score *language deathswap.setting matches 1 \
if score *blue_count deathswap.status matches 1.. run scoreboard players display name *team_blue deathswap.display.play_status ["",\
    {"text":"B","color":"blue"},{"text":" Blue: "},\
    {"score":{"name":"*blue_count","objective":"deathswap.status"},"color":"green"}\
]
execute if score *mode deathswap.setting matches 2 if score *language deathswap.setting matches 1 \
if score *yellow_count deathswap.status matches 1.. run scoreboard players display name *team_yellow deathswap.display.play_status ["",\
    {"text":"Y","color":"yellow"},{"text":" Yellow: "},\
    {"score":{"name":"*yellow_count","objective":"deathswap.status"},"color":"green"}\
]
execute if score *mode deathswap.setting matches 2 if score *language deathswap.setting matches 1 \
if score *green_count deathswap.status matches 1.. run scoreboard players display name *team_green deathswap.display.play_status ["",\
    {"text":"G","color":"green"},{"text":" Green: "},\
    {"score":{"name":"*green_count","objective":"deathswap.status"},"color":"green"}\
]

#team/eliminated/en
execute if score *mode deathswap.setting matches 2 if score *language deathswap.setting matches 1 \
if score *red_count deathswap.status matches 0 run scoreboard players display name *team_red deathswap.display.play_status ["",\
    {"text":"R","color":"red"},{"text":" Red: "},\
    {"text":"❌","color":"red"}\
]
execute if score *mode deathswap.setting matches 2 if score *language deathswap.setting matches 1 \
if score *blue_count deathswap.status matches 0 run scoreboard players display name *team_blue deathswap.display.play_status ["",\
    {"text":"B","color":"blue"},{"text":" Blue: "},\
    {"text":"❌","color":"red"}\
]
execute if score *mode deathswap.setting matches 2 if score *language deathswap.setting matches 1 \
if score *yellow_count deathswap.status matches 0 run scoreboard players display name *team_yellow deathswap.display.play_status ["",\
    {"text":"Y","color":"yellow"},{"text":" Yellow: "},\
    {"text":"❌","color":"red"}\
]
execute if score *mode deathswap.setting matches 2 if score *language deathswap.setting matches 1 \
if score *green_count deathswap.status matches 0 run scoreboard players display name *team_green deathswap.display.play_status ["",\
    {"text":"G","color":"green"},{"text":" Green: "},\
    {"text":"❌","color":"red"}\
]

#team/tw
execute if score *mode deathswap.setting matches 2 if score *language deathswap.setting matches 2 \
if score *red_count deathswap.status matches 1.. run scoreboard players display name *team_red deathswap.display.play_status ["",\
    {"text":"紅","color":"red"},{"text":"："},\
    {"score":{"name":"*red_count","objective":"deathswap.status"},"color":"green"}\
]
execute if score *mode deathswap.setting matches 2 if score *language deathswap.setting matches 2 \
if score *blue_count deathswap.status matches 1.. run scoreboard players display name *team_blue deathswap.display.play_status ["",\
    {"text":"藍","color":"blue"},{"text":"："},\
    {"score":{"name":"*blue_count","objective":"deathswap.status"},"color":"green"}\
]
execute if score *mode deathswap.setting matches 2 if score *language deathswap.setting matches 2 \
if score *yellow_count deathswap.status matches 1.. run scoreboard players display name *team_yellow deathswap.display.play_status ["",\
    {"text":"黃","color":"yellow"},{"text":"："},\
    {"score":{"name":"*yellow_count","objective":"deathswap.status"},"color":"green"}\
]
execute if score *mode deathswap.setting matches 2 if score *language deathswap.setting matches 2 \
if score *green_count deathswap.status matches 1.. run scoreboard players display name *team_green deathswap.display.play_status ["",\
    {"text":"綠","color":"green"},{"text":"："},\
    {"score":{"name":"*green_count","objective":"deathswap.status"},"color":"green"}\
]

#team/eliminated/tw
execute if score *mode deathswap.setting matches 2 if score *language deathswap.setting matches 2 \
if score *red_count deathswap.status matches 0 run scoreboard players display name *team_red deathswap.display.play_status ["",\
    {"text":"紅","color":"red"},{"text":"："},\
    {"text":"❌","color":"red"}\
]
execute if score *mode deathswap.setting matches 2 if score *language deathswap.setting matches 2 \
if score *blue_count deathswap.status matches 0 run scoreboard players display name *team_blue deathswap.display.play_status ["",\
    {"text":"藍","color":"blue"},{"text":"："},\
    {"text":"❌","color":"red"}\
]
execute if score *mode deathswap.setting matches 2 if score *language deathswap.setting matches 2 \
if score *yellow_count deathswap.status matches 0 run scoreboard players display name *team_yellow deathswap.display.play_status ["",\
    {"text":"黃","color":"yellow"},{"text":"："},\
    {"text":"❌","color":"red"}\
]
execute if score *mode deathswap.setting matches 2 if score *language deathswap.setting matches 2 \
if score *green_count deathswap.status matches 0 run scoreboard players display name *team_green deathswap.display.play_status ["",\
    {"text":"綠","color":"green"},{"text":"："},\
    {"text":"❌","color":"red"}\
]
