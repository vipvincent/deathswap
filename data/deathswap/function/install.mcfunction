#install

#install_stage
execute if data storage deathswap:storage_main {install_stage:1b} unless score *language deathswap.setting matches 1.. run return run function deathswap:language

execute if data storage deathswap:storage_main {install_stage:1b} if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§6Death Swap §finstall completed!"}]
execute if data storage deathswap:storage_main {install_stage:1b} if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§6死亡交換§f安裝完成！"}]
execute if data storage deathswap:storage_main {install_stage:1b} if score *language deathswap.setting matches 1.. run function deathswap:reset
execute if data storage deathswap:storage_main {install_stage:1b} if score *language deathswap.setting matches 1.. run return run data remove storage deathswap:storage_main install_stage

#return
execute if data storage deathswap:storage_main {install:1b} if score *language deathswap.setting matches 1 run tellraw @s [\
    {\
        text: "You have installed Death Swap! ",color: red \
    },\
    {\
        text: "[Reinstall] ",color: light_purple,\
        click_event: {\
            action: run_command,command: "/function deathswap:reinstall"\
        },\
        hover_event: {\
            action: show_text,\
            value: [\
                {\
                    text:"Click here or type command",color:yellow \
                },\
                "\n",\
                {\
                    text:"/function deathswap:reinstall",color:light_purple \
                },\
                {\
                    text:"[OP]",color:red \
                }\
            ]\
        }\
    },\
    {\
        text: "[Uninstall] ",color:dark_red,\
        click_event: {\
            action: run_command,command: "/function deathswap:uninstall" \
        },\
        hover_event: {\
            action: show_text,\
            value: [\
                {\
                    text:"Click here or type command",color:yellow \
                },\
                "\n",\
                {\
                    text:"/function deathswap:uninstall",color:light_purple \
                },\
                {\
                    text:"[OP]",color:red \
                }\
            ]\
        }\
    }\
]
execute if data storage deathswap:storage_main {install:1b} if score *language deathswap.setting matches 2 run tellraw @s [\
    {\
        text: "你已經安裝死亡交換！ ",color: red \
    },\
    {\
        text: "[重新安裝] ",color:light_purple,\
        click_event: {\
            action: run_command,command: "/function deathswap:reinstall" \
        },\
        hover_event: {\
            action: show_text,\
            value: [\
                {\
                    text:"點此或輸入以下指令",color:yellow \
                },\
                "\n",\
                {\
                    text:"/function deathswap:reinstall",color:light_purple \
                },\
                {\
                    text:"[OP]",color:red \
                }\
            ]\
        }\
    },\
    {\
        text: "[解除安裝] ",color:dark_red,\
        click_event: {\
            action: run_command,\
            command: "/function deathswap:uninstall" \
        },\
        hover_event: {\
            action: show_text,\
            value: [\
                {\
                    text:"點此或輸入以下指令",color:yellow \
                },\
                "\n",\
                {\
                    text:"/function deathswap:uninstall",color:light_purple \
                },\
                {\
                    text:"[OP]",color:red \
                }\
            ]\
        }\
    }\
]
execute if data storage deathswap:storage_main {install:1b} at @s run playsound entity.villager.no master @s ~ ~ ~
execute if data storage deathswap:storage_main {install:1b} run return fail

#install main
execute unless data storage deathswap:storage_main {reinstall_stage:1b} run tellraw @a "-----------------------------------------------------"
execute unless data storage deathswap:storage_main {reinstall_stage:1b} run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fInstalling §6Death Swap§f... §f正在安裝§6死亡交換§f..."}]
execute unless data storage deathswap:storage_main {reinstall_stage:1b} run tellraw @a "-----------------------------------------------------"
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

#gamerule
gamerule minecraft:pvp true
gamerule minecraft:locator_bar false
gamerule minecraft:immediate_respawn true
gamerule minecraft:send_command_feedback false

gamerule minecraft:respawn_radius 0

#bossbar
bossbar add deathswap:swap_countdown ""
bossbar set deathswap:swap_countdown color white
bossbar add deathswap:wait ""
bossbar set deathswap:wait color pink
bossbar set deathswap:wait max 400
bossbar add deathswap:gmchange ""
bossbar add deathswap:arena ""
bossbar set deathswap:arena color yellow
bossbar add deathswap:random_effect ""
bossbar set deathswap:random_effect color purple

#team
team add red
team add blue
team add yellow
team add green
team add solo
team add spectator

team modify red color red
team modify blue color blue
team modify yellow color yellow
team modify green color green
team modify solo color green
team modify spectator color gray

team modify solo seeFriendlyInvisibles false

#worldborder
worldborder damage buffer 0

#scoreboard
#system
scoreboard objectives add deathswap.status dummy
scoreboard objectives add deathswap.setting dummy
scoreboard objectives add deathswap.timer dummy

#swap
scoreboard objectives add deathswap.swap_original dummy
scoreboard objectives add deathswap.swap_calculated dummy

#player
scoreboard objectives add deathswap.death deathCount
scoreboard objectives add deathswap.health health {text:"❤",color:red}
scoreboard objectives add deathswap.win_score dummy
scoreboard objectives add deathswap.ui_page dummy

scoreboard objectives add deathswap.leave_game minecraft.custom:minecraft.leave_game
scoreboard objectives add deathswap.carrot_right_click minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add deathswap.damage_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add deathswap.damage_taken.integer dummy
scoreboard objectives add deathswap.damage_taken.decimals dummy

#display_sidebar
scoreboard objectives add deathswap.display.play_status dummy
scoreboard objectives add deathswap.display.rank dummy
scoreboard objectives modify deathswap.display.play_status numberformat blank
scoreboard objectives modify deathswap.display.rank numberformat blank

#trigger
scoreboard objectives add deathswap trigger
scoreboard objectives add reset trigger

#set
scoreboard players set *team_choose deathswap.setting 0

#operation use
scoreboard players set #operation.10 deathswap.status 10
scoreboard players set #operation.20 deathswap.status 20

#setdisplay
scoreboard objectives setdisplay below_name deathswap.health

#solo/team battle
scoreboard players set *mode deathswap.setting 1

#gamemode
defaultgamemode survival

#player
scoreboard players set @a deathswap.leave_game 0
tag @a add notadmin

#for install player give admin
tag @s add admin 

#setting default
function deathswap:setting/default_all

#install
data modify storage deathswap:storage_main install set value 1b
data modify storage deathswap:storage_main install_version set value "v3.6"
data modify storage deathswap:storage_main install_stage set value 1b

#ui/language
execute unless data storage deathswap:storage_main {reinstall_stage:1b} unless score *language deathswap.setting matches 1.. run function deathswap:language