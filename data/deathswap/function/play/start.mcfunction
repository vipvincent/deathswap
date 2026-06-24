#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/start.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#get swap_time
function deathswap:play/swap/swap_time

#gamemode
gamemode survival @a[tag=player]
gamemode spectator @a[tag=spectator]

#still_off
execute as @a run function deathswap:lib/still/off

#team
function deathswap:team/friendlyfire/use_setting
function deathswap:team/collisionrule/use_setting

#gamerule
gamerule minecraft:max_entity_cramming 24

#time&weather_cycle
execute if score *time_cycle deathswap.setting matches 0 run gamerule minecraft:advance_time false
execute if score *time_cycle deathswap.setting matches 1 run gamerule minecraft:advance_time true

execute if score *weather_cycle deathswap.setting matches 0 run gamerule minecraft:advance_weather false
execute if score *weather_cycle deathswap.setting matches 1 run gamerule minecraft:advance_weather true

#bossbar 
bossbar set deathswap:wait visible false
bossbar set deathswap:swap_countdown visible true
execute if score *arena deathswap.setting matches 1 if score *arena.start deathswap.setting matches 0 if score *arena.shrink deathswap.setting matches 1 run bossbar set deathswap:arena visible true
execute if score *gmchange deathswap.setting matches 1 run bossbar set deathswap:gmchange visible true
execute if score *random_effect deathswap.setting matches 1 run bossbar set deathswap:random_effect visible true

#reset death
scoreboard players reset @a deathswap.death

#update player_count_update
scoreboard players operation *player_count_update deathswap.status = *player_count deathswap.status

#status
scoreboard players set *game deathswap.status 2

#play_count
scoreboard players add *play_count deathswap.status 1

#reset adv
gamerule minecraft:show_advancement_messages true
advancement revoke @a everything

#give_item
function deathswap:play/start_item

#sidebar
scoreboard players reset * deathswap.display.play_status
scoreboard objectives setdisplay sidebar deathswap.display.play_status

#---
#title
execute if score *language deathswap.setting matches 1 run title @a title {text:"Death Swap",color:"gold"}
execute if score *language deathswap.setting matches 2 run title @a title {text:"死亡交換",color:"gold"}
execute if score *language deathswap.setting matches 1 run title @a subtitle {text:"Game Started!",color:"green"}
execute if score *language deathswap.setting matches 2 run title @a subtitle {text:"遊戲開始！",color:"green"}

#text
tellraw @a "-----------------------------------------------------"

#text - start for notadmin
execute if score *language deathswap.setting matches 1 run tellraw @a[tag=notadmin] [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Game Started!"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a[tag=notadmin] [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"遊戲開始！"}\
]
#text - start + reset for admin
execute if score *language deathswap.setting matches 1 run tellraw @a[tag=admin] [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Game Started!"},\
    {\
        text: " [Reset Game]",color: "aqua",\
        click_event: {\
            action: "run_command",command: "/trigger reset" \
        },\
        hover_event: {\
            action: "show_text",value: [\
                {text:"Click here or type command",color:yellow},"\n",\
                {text:"/trigger reset",color:light_purple},{text:" [Admin]",color:green},"\n",\
                {text:"/function deathswap:reset",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    },\
]
execute if score *language deathswap.setting matches 2 run tellraw @a[tag=admin] [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"遊戲開始！"},\
    {\
        text: " [重製遊戲]",color: "aqua",\
        click_event: {\
            action: "run_command",command: "/trigger reset" \
        },\
        hover_event: {\
            action: "show_text",value: [\
                {text:"點此或輸入以下指令",color:yellow},"\n",\
                {text:"/trigger reset",color:light_purple},{text:" [管理員]",color:green},"\n",\
                {text:"/function deathswap:reset",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    },\
]
#text - /teammsg
execute if score *mode deathswap.setting matches 1 if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {\
        text: "Please use /teammsg to send messages in the team chat",\
        click_event: {\
            action: "suggest_command",command: "/teammsg " \
        },\
        hover_event: {\
            action: "show_text",value: "/teammsg <message>" \
        }\
    }\
]
execute if score *mode deathswap.setting matches 1 if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {\
        text: "請使用 /teammsg 在隊伍聊天室傳訊息",\
        click_event: {\
            action: "suggest_command","command": "/teammsg " \
        },\
        hover_event: {\
            action: "show_text","value": "/teammsg <訊息>" \
        }\
    }\
]

#sound
execute as @a at @s run playsound block.end_portal.spawn master @s ~ ~ ~

#---
#arena
execute if score *arena deathswap.setting matches 1 if score *arena.start deathswap.setting matches 0 run scoreboard players set *arena deathswap.status 2
execute if score *arena deathswap.setting matches 1 if score *arena.start deathswap.setting matches 0 store result score *arena.border deathswap.status run scoreboard players get *arena.border deathswap.setting
execute if score *arena deathswap.setting matches 1 if score *arena.start deathswap.setting matches 0 if score *arena.shrink deathswap.setting matches 1 run function deathswap:play/arena/shrink_wait

#random_effect
execute if score *random_effect deathswap.setting matches 1 run function deathswap:play/random_effect/random

#killer
execute if score *mode deathswap.setting matches 1 if score *killer deathswap.setting matches 1 run schedule function deathswap:play/killer/choose_killer 5s

#adv
advancement grant @a[tag=player] only deathswap:main/criteria/start
advancement grant @a[team=spectator] only deathswap:main/criteria/spectator