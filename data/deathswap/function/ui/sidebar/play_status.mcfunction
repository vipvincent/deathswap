#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/sidebar/play_status.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#shared_object
function deathswap:ui/sidebar/shared_object {score_objectives:"deathswap.display.play_status"}

#---
#round
scoreboard players set *swap_count deathswap.display.play_status -1

execute if score *language deathswap.setting matches 1 run \
scoreboard players display name *swap_count deathswap.display.play_status ["",\
    {text:"Swap Count: "},\
    {score:{name:"*swap_count",objective:"deathswap.status"},color:"green"}\
]
execute if score *language deathswap.setting matches 2 run \
scoreboard players display name *swap_count deathswap.display.play_status ["",\
    {text:"交換次數："},\
    {score:{name:"*swap_count",objective:"deathswap.status"},color:"green"}\
]

#---
#round_time
scoreboard players set *round_time deathswap.display.play_status -2

execute if score *language deathswap.setting matches 1 run \
scoreboard players display name *round_time deathswap.display.play_status ["",\
    {text:"Round Time: "},\
    {storage:"deathswap:ui",nbt:"time.round_time.display",interpret:true,color:"green"}\
]
execute if score *language deathswap.setting matches 2 run \
scoreboard players display name *round_time deathswap.display.play_status ["",\
    {text:"回合時間："},\
    {storage:"deathswap:ui",nbt:"time.round_time.display",interpret:true,color:"green"}\
]

#---
#play_time
scoreboard players set *play_time deathswap.display.play_status -3

execute if score *language deathswap.setting matches 1 run \
scoreboard players display name *play_time deathswap.display.play_status ["",\
    {text:"Play Time: "},\
    {storage:"deathswap:ui",nbt:"time.play_time.display",interpret:true,color:"green"}\
]
execute if score *language deathswap.setting matches 2 run \
scoreboard players display name *play_time deathswap.display.play_status ["",\
    {text:"遊玩時間："},\
    {storage:"deathswap:ui",nbt:"time.play_time.display",interpret:true,color:"green"}\
]

#---
#blank
scoreboard players set *blank_1 deathswap.display.play_status -10
scoreboard players display name *blank_1 deathswap.display.play_status ""

#---
#solo_count
execute if score *mode deathswap.setting matches 0 run scoreboard players set *solo_count deathswap.display.play_status -11

execute if score *mode deathswap.setting matches 0 if score *language deathswap.setting matches 1 run \
scoreboard players display name *solo_count deathswap.display.play_status [\
    {"text":"Remaining Players: "},\
    {"score":{"name":"*solo_count","objective":"deathswap.status"},"color":"green"}\
]

execute if score *mode deathswap.setting matches 0 if score *language deathswap.setting matches 2 run \
scoreboard players display name *solo_count deathswap.display.play_status [\
    {"text":"剩餘玩家："},\
    {"score":{"name":"*solo_count","objective":"deathswap.status"},"color":"green"}\
]


#team
execute if score *mode deathswap.setting matches 1 run scoreboard players set *team_red deathswap.display.play_status -11
execute if score *mode deathswap.setting matches 1 run scoreboard players set *team_blue deathswap.display.play_status -12
execute if score *mode deathswap.setting matches 1 run scoreboard players set *team_green deathswap.display.play_status -13
execute if score *mode deathswap.setting matches 1 run scoreboard players set *team_yellow deathswap.display.play_status -14

#team/en
execute if score *mode deathswap.setting matches 1 if score *language deathswap.setting matches 1 \
if score *red_count deathswap.status matches 1.. run scoreboard players display name *team_red deathswap.display.play_status ["",\
    {"text":"R","color":"red"},{"text":" Red: "},\
    {"score":{"name":"*red_count","objective":"deathswap.status"},"color":"green"}\
]
execute if score *mode deathswap.setting matches 1 if score *language deathswap.setting matches 1 \
if score *blue_count deathswap.status matches 1.. run scoreboard players display name *team_blue deathswap.display.play_status ["",\
    {"text":"B","color":"blue"},{"text":" Blue: "},\
    {"score":{"name":"*blue_count","objective":"deathswap.status"},"color":"green"}\
]
execute if score *mode deathswap.setting matches 1 if score *language deathswap.setting matches 1 \
if score *green_count deathswap.status matches 1.. run scoreboard players display name *team_green deathswap.display.play_status ["",\
    {"text":"G","color":"green"},{"text":" Green: "},\
    {"score":{"name":"*green_count","objective":"deathswap.status"},"color":"green"}\
]
execute if score *mode deathswap.setting matches 1 if score *language deathswap.setting matches 1 \
if score *yellow_count deathswap.status matches 1.. run scoreboard players display name *team_yellow deathswap.display.play_status ["",\
    {"text":"Y","color":"yellow"},{"text":" Yellow: "},\
    {"score":{"name":"*yellow_count","objective":"deathswap.status"},"color":"green"}\
]

#team/eliminated/en
execute if score *mode deathswap.setting matches 1 if score *language deathswap.setting matches 1 \
if score *red_count deathswap.status matches 0 run scoreboard players display name *team_red deathswap.display.play_status ["",\
    {"text":"R","color":"red"},{"text":" Red: "},\
    {"text":"❌","color":"red"}\
]
execute if score *mode deathswap.setting matches 1 if score *language deathswap.setting matches 1 \
if score *blue_count deathswap.status matches 0 run scoreboard players display name *team_blue deathswap.display.play_status ["",\
    {"text":"B","color":"blue"},{"text":" Blue: "},\
    {"text":"❌","color":"red"}\
]
execute if score *mode deathswap.setting matches 1 if score *language deathswap.setting matches 1 \
if score *green_count deathswap.status matches 0 run scoreboard players display name *team_green deathswap.display.play_status ["",\
    {"text":"G","color":"green"},{"text":" Green: "},\
    {"text":"❌","color":"red"}\
]
execute if score *mode deathswap.setting matches 1 if score *language deathswap.setting matches 1 \
if score *yellow_count deathswap.status matches 0 run scoreboard players display name *team_yellow deathswap.display.play_status ["",\
    {"text":"Y","color":"yellow"},{"text":" Yellow: "},\
    {"text":"❌","color":"red"}\
]

#team/tw
execute if score *mode deathswap.setting matches 1 if score *language deathswap.setting matches 2 \
if score *red_count deathswap.status matches 1.. run scoreboard players display name *team_red deathswap.display.play_status ["",\
    {"text":"紅","color":"red"},{"text":"："},\
    {"score":{"name":"*red_count","objective":"deathswap.status"},"color":"green"}\
]
execute if score *mode deathswap.setting matches 1 if score *language deathswap.setting matches 2 \
if score *blue_count deathswap.status matches 1.. run scoreboard players display name *team_blue deathswap.display.play_status ["",\
    {"text":"藍","color":"blue"},{"text":"："},\
    {"score":{"name":"*blue_count","objective":"deathswap.status"},"color":"green"}\
]
execute if score *mode deathswap.setting matches 1 if score *language deathswap.setting matches 2 \
if score *green_count deathswap.status matches 1.. run scoreboard players display name *team_green deathswap.display.play_status ["",\
    {"text":"綠","color":"green"},{"text":"："},\
    {"score":{"name":"*green_count","objective":"deathswap.status"},"color":"green"}\
]
execute if score *mode deathswap.setting matches 1 if score *language deathswap.setting matches 2 \
if score *yellow_count deathswap.status matches 1.. run scoreboard players display name *team_yellow deathswap.display.play_status ["",\
    {"text":"黃","color":"yellow"},{"text":"："},\
    {"score":{"name":"*yellow_count","objective":"deathswap.status"},"color":"green"}\
]

#team/eliminated/tw
execute if score *mode deathswap.setting matches 1 if score *language deathswap.setting matches 2 \
if score *red_count deathswap.status matches 0 run scoreboard players display name *team_red deathswap.display.play_status ["",\
    {"text":"紅","color":"red"},{"text":"："},\
    {"text":"❌","color":"red"}\
]
execute if score *mode deathswap.setting matches 1 if score *language deathswap.setting matches 2 \
if score *blue_count deathswap.status matches 0 run scoreboard players display name *team_blue deathswap.display.play_status ["",\
    {"text":"藍","color":"blue"},{"text":"："},\
    {"text":"❌","color":"red"}\
]
execute if score *mode deathswap.setting matches 1 if score *language deathswap.setting matches 2 \
if score *green_count deathswap.status matches 0 run scoreboard players display name *team_green deathswap.display.play_status ["",\
    {"text":"綠","color":"green"},{"text":"："},\
    {"text":"❌","color":"red"}\
]
execute if score *mode deathswap.setting matches 1 if score *language deathswap.setting matches 2 \
if score *yellow_count deathswap.status matches 0 run scoreboard players display name *team_yellow deathswap.display.play_status ["",\
    {"text":"黃","color":"yellow"},{"text":"："},\
    {"text":"❌","color":"red"}\
]
