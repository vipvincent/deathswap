#uninstall

#return
execute unless data storage deathswap:storage_main {install:1b} run tellraw @s [\
    {\
        text: "Death Swap is not installed yet! 尚未安裝死亡交換！",color:red \
    },\
    {\
        text: "[Install 安裝] ",color: white,\
        click_event: {\
            action:run_command,command: "/function deathswap:install" \
        },\
        hover_event: {\
            action: show_text,\
            value: [\
                {\
                    text:"Click here or type command 點此或輸入以下指令",color:yellow \
                },\
                "\n",\
                {\
                    text:"/function deathswap:install",color:light_purple \
                },\
                {\
                    text:" [OP]",color:red \
                }\
            ]\
        }\
    }\
]
execute unless data storage deathswap:storage_main {install:1b} at @s run playsound entity.villager.no master @s ~ ~ ~
execute unless data storage deathswap:storage_main {install:1b} run return fail

#text
execute unless data storage deathswap:storage_main {reinstall_stage:1b} run tellraw @a "-----------------------------------------------------"
execute unless data storage deathswap:storage_main {reinstall_stage:1b} unless score *language deathswap.setting matches 2.. run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fUninstalling §6Death Swap§f..."}]
execute unless data storage deathswap:storage_main {reinstall_stage:1b} unless score *language deathswap.setting matches 2.. run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fIf you want to uninstall it completely,"}]
execute unless data storage deathswap:storage_main {reinstall_stage:1b} unless score *language deathswap.setting matches 2.. run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fDelete file and type /reload"}]

execute unless data storage deathswap:storage_main {reinstall_stage:1b} if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f正在解除安裝§6死亡交換§f..."}]
execute unless data storage deathswap:storage_main {reinstall_stage:1b} if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f如要徹底解除安裝，請刪除檔案後輸入/reload"}]
execute unless data storage deathswap:storage_main {reinstall_stage:1b} run tellraw @a "-----------------------------------------------------"

#sound
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

#forceload
execute as @e[type=marker,tag=lobby] at @s run forceload remove ~ ~

#uninstall
time set day
weather clear
clear @a
function deathswap:lib/clear_ender_chest
xp set @a 0 points
xp set @a 0 levels
effect clear @a
advancement revoke @a everything
kill @a
kill @e[type=marker,tag=pos]
kill @e[type=marker,tag=lobby]
kill @e[tag=lobby_text]
attribute @s minecraft:max_health base set 20

function deathswap:lib/still/off

#data
data remove storage deathswap:storage_main install
data remove storage deathswap:storage_main install_stage
data remove storage deathswap:storage_main install_version
data remove storage deathswap:storage_main last_death
data remove storage deathswap:storage_main random_effect
data remove storage deathswap:storage_main ui

#bossbar
bossbar remove deathswap:swap_countdown
bossbar remove deathswap:wait
bossbar remove deathswap:gmchange
bossbar remove deathswap:arena
bossbar remove deathswap:random_effect

#tag
tag @a remove player
tag @a remove creative
tag @a remove spectator
tag @a remove eliminated
tag @a remove win
tag @a remove admin
tag @a remove notadmin
tag @a remove killer

#scoreboard
#system
scoreboard objectives remove deathswap.status
scoreboard objectives remove deathswap.timer
scoreboard objectives remove deathswap.setting

#swap
scoreboard objectives remove deathswap.swap_original
scoreboard objectives remove deathswap.swap_calculated

#player
scoreboard objectives remove deathswap.death
scoreboard objectives remove deathswap.health
scoreboard objectives remove deathswap.leave_game
scoreboard objectives remove deathswap.carrot_right_click
scoreboard objectives remove deathswap.damage_taken
scoreboard objectives remove deathswap.damage_taken.integer
scoreboard objectives remove deathswap.damage_taken.decimals
scoreboard objectives remove deathswap.ui_page
scoreboard objectives remove deathswap.win_score

#display_sidebar
scoreboard objectives remove deathswap.display.play_status
scoreboard objectives remove deathswap.display.rank

#trigger
scoreboard objectives remove deathswap
scoreboard objectives remove reset

#worldborder
execute in minecraft:overworld run worldborder center 0 0
execute in minecraft:the_nether run worldborder center 0 0
execute in minecraft:the_end run worldborder center 0 0
execute in minecraft:overworld run worldborder set 59999968 0 
execute in minecraft:the_nether run worldborder set 59999968 0 
execute in minecraft:the_end run worldborder set 59999968 0 
worldborder damage buffer 5

#team
team remove red
team remove blue
team remove yellow
team remove green
team remove spectator

#gamerule
gamerule minecraft:keep_inventory false
gamerule minecraft:reduced_debug_info false
gamerule minecraft:locator_bar true
gamerule minecraft:immediate_respawn false
gamerule minecraft:natural_health_regeneration true

gamerule minecraft:advance_time true
gamerule minecraft:advance_weather true 

gamerule minecraft:spawn_monsters true
gamerule minecraft:spawner_blocks_work true

gamerule minecraft:show_advancement_messages true
gamerule minecraft:show_death_messages true
gamerule minecraft:send_command_feedback true

gamerule minecraft:max_entity_cramming 24
gamerule minecraft:respawn_radius 10

#end
gamemode survival @a