#install

#install_stage
execute if data storage deathswap:storage_main {install_stage:1b} unless score *language deathswap.setting matches 1.. run return run function deathswap:ui/language

execute if data storage deathswap:storage_main {install_stage:1b} if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§6Death Swap §finstall completed!"}]
execute if data storage deathswap:storage_main {install_stage:1b} if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§6死亡交換§f安裝完成！"}]
execute if data storage deathswap:storage_main {install_stage:1b} if score *language deathswap.setting matches 1.. run function deathswap:reset
execute if data storage deathswap:storage_main {install_stage:1b} if score *language deathswap.setting matches 1.. run return run data remove storage deathswap:storage_main install_stage

#return
execute if data storage deathswap:storage_main {install:1b} if score *language deathswap.setting matches 1 run tellraw @s [{"text": "§cYou have installed Death Swap! "},\
{"text": "§d[Reinstall] ","click_event": {"action": "run_command","command": "/function deathswap:reinstall"},"hover_event": {"action": "show_text","value": "§eClick here or type command\n§d/function deathswap:reinstall §c[OP players]"}},\
{"text": "§4[Uninstall] ","click_event": {"action": "run_command","command": "/function deathswap:uninstall"},"hover_event": {"action": "show_text","value": "§eClick here or type command\n§d/function deathswap:uninstall §c[OP players]"}}\
]
execute if data storage deathswap:storage_main {install:1b} if score *language deathswap.setting matches 2 run tellraw @s [{"text": "§c你已經安裝死亡交換！ "},\
{"text": "§d[重新安裝] ","click_event": {"action": "run_command","command": "/function deathswap:reinstall"},"hover_event": {"action": "show_text","value": "§e點此或輸入以下指令\n§d/function deathswap:reinstall §c[OP 玩家]"}},\
{"text": "§4[解除安裝] ","click_event": {"action": "run_command","command": "/function deathswap:uninstall"},"hover_event": {"action": "show_text","value": "§e點此或輸入以下指令\n§d/function deathswap:uninstall §c[OP 玩家]"}}\
]
execute if data storage deathswap:storage_main {install:1b} at @s run playsound entity.villager.no master @s ~ ~ ~
execute if data storage deathswap:storage_main {install:1b} run return fail

#install main
execute unless data storage deathswap:storage_main {reinstall_stage:1b} run tellraw @a {"text": "-----------------------------------------------------"}
execute unless data storage deathswap:storage_main {reinstall_stage:1b} run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fInstalling §6Death Swap§f... §f正在安裝§6死亡交換§f..."}]
execute unless data storage deathswap:storage_main {reinstall_stage:1b} run tellraw @a {"text": "-----------------------------------------------------"}
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
team modify solo color dark_green
team modify spectator color gray

team modify red seeFriendlyInvisibles true
team modify blue seeFriendlyInvisibles true 
team modify yellow seeFriendlyInvisibles true 
team modify green seeFriendlyInvisibles true

#worldborder
worldborder damage buffer 0

#scoreboard
scoreboard objectives add deathswap.status dummy
scoreboard objectives add deathswap.setting dummy
scoreboard objectives add deathswap.timer dummy
scoreboard objectives add deathswap.display_sidebar dummy "Please Choose Language 請選擇語言"
scoreboard objectives add deathswap.swap_original dummy
scoreboard objectives add deathswap.swap_calculated dummy

#player
scoreboard objectives add deathswap trigger
scoreboard objectives add deathswap.death deathCount
scoreboard objectives add deathswap.health health {"text": "§c❤"}
scoreboard objectives add deathswap.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add deathswap.leave_game minecraft.custom:minecraft.leave_game
scoreboard objectives add deathswap.carrot_right_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add deathswap.damage_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add deathswap.damage_taken.integer dummy
scoreboard objectives add deathswap.damage_taken.decimals dummy
scoreboard objectives add deathswap.win_score dummy
scoreboard objectives add deathswap.ui_page dummy

#set
scoreboard players set *team_choose deathswap.setting 0

#operation use
scoreboard players set #operation.10 deathswap.status 10
scoreboard players set #operation.20 deathswap.status 20

#setdisplay
scoreboard objectives setdisplay below_name deathswap.health
scoreboard objectives setdisplay list deathswap.health
scoreboard objectives setdisplay sidebar deathswap.display_sidebar

#solo/team battle
scoreboard players set *mode deathswap.setting 1

#player
scoreboard players set @a deathswap.leave_game 0
tag @a add notadmin

#for install player give admin
tag @s add admin 

#setting default
function deathswap:setting/default_all

#install
data modify storage deathswap:storage_main install set value 1b
data modify storage deathswap:storage_main version set value "v3.5"
data modify storage deathswap:storage_main install_stage set value 1b

#ui/language
execute unless data storage deathswap:storage_main {reinstall_stage:1b} unless score *language deathswap.setting matches 1.. run function deathswap:ui/language