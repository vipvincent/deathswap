#install

#install_stage
execute if data storage deathswap:status {install_stage:1b} unless score language deathswap.setting matches 1.. run return run function deathswap:ui/language
execute if data storage deathswap:status {install_stage:1b} if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§6Death Swap §finstall completed!"}]
execute if data storage deathswap:status {install_stage:1b} if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§6死亡交換§f安裝完成！"}]
execute if data storage deathswap:status {install_stage:1b} if score language deathswap.setting matches 1.. run function deathswap:reset
execute if data storage deathswap:status {install_stage:1b} if score language deathswap.setting matches 1.. run return run data remove storage deathswap:status install_stage

#return
execute if data storage deathswap:status {install:1b} if score language deathswap.setting matches 1 run tellraw @s [{"text": "§cYou have installed Death Swap! "},\
{"text": "§d[Reinstall] ","click_event": {"action": "run_command","command": "/function deathswap:reinstall"},"hover_event": {"action": "show_text","value": "§eClick here or type command\n§d/function deathswap:reinstall §c[OP players]"}},\
{"text": "§4[Uninstall] ","click_event": {"action": "run_command","command": "/function deathswap:uninstall"},"hover_event": {"action": "show_text","value": "§eClick here or type command\n§d/function deathswap:uninstall §c[OP players]"}}\
]
execute if data storage deathswap:status {install:1b} if score language deathswap.setting matches 2 run tellraw @s [{"text": "§c你已經安裝死亡交換！ "},\
{"text": "§d[重新安裝] ","click_event": {"action": "run_command","command": "/function deathswap:reinstall"},"hover_event": {"action": "show_text","value": "§e點此或輸入以下指令\n§d/function deathswap:reinstall §c[OP 玩家]"}},\
{"text": "§4[解除安裝] ","click_event": {"action": "run_command","command": "/function deathswap:uninstall"},"hover_event": {"action": "show_text","value": "§e點此或輸入以下指令\n§d/function deathswap:uninstall §c[OP 玩家]"}}\
]
execute if data storage deathswap:status {install:1b} at @s run playsound entity.villager.no master @s ~ ~ ~
execute if data storage deathswap:status {install:1b} run return fail

#install main
execute unless data storage deathswap:status {reinstall:1b} run tellraw @a {"text": "-----------------------------------------------------"}
execute unless data storage deathswap:status {reinstall:1b} run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fInstalling §6Death Swap§f... §f正在安裝§6死亡交換§f..."}]
execute unless data storage deathswap:status {reinstall:1b} run tellraw @a {"text": "-----------------------------------------------------"}
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

#gamerule
gamerule doImmediateRespawn true
gamerule sendCommandFeedback false
gamerule locatorBar false
gamerule spawnRadius 0

#worldborder
worldborder damage buffer 0

#scoreboard
scoreboard objectives add deathswap trigger
scoreboard objectives add deathswap.status dummy
scoreboard objectives add deathswap.setting dummy
scoreboard objectives add deathswap.timer dummy
scoreboard objectives add deathswap.death deathCount
scoreboard objectives add deathswap.count dummy
scoreboard objectives add deathswap.win_score dummy
scoreboard objectives add deathswap.ui_page dummy
scoreboard objectives add deathswap.join_game dummy
scoreboard objectives add deathswap.carrot_right_click minecraft.used:minecraft.carrot_on_a_stick

scoreboard players set team_choose deathswap.setting 0
scoreboard players set safetime deathswap.status 30
scoreboard players set tick deathswap.status 20

#health
scoreboard objectives add deathswap.health health {"text": "§c❤"}
scoreboard objectives add deathswap.hurt dummy
scoreboard objectives setdisplay below_name deathswap.health

#team
team add red
team add blue
team add yellow
team add green
team add spectator
team modify red color red
team modify blue color blue
team modify yellow color yellow
team modify green color green
team modify spectator color gray
team modify red seeFriendlyInvisibles true
team modify blue seeFriendlyInvisibles true 
team modify yellow seeFriendlyInvisibles true 
team modify green seeFriendlyInvisibles true

#bossbar
bossbar add deathswap:swap_countdown ""
bossbar set deathswap:swap_countdown color white
bossbar add deathswap:wait ""
bossbar set deathswap:wait color pink
bossbar set deathswap:wait max 200
bossbar add deathswap:gmchange ""
bossbar add deathswap:arena ""
bossbar set deathswap:arena color yellow
bossbar add deathswap:random_effect ""
bossbar set deathswap:random_effect color purple

#player
scoreboard players set @a deathswap.join_game 1
tag @a add notadmin

#for install player give admin
tag @s add admin 

#setting default
function deathswap:setting/default_all

#install
data modify storage deathswap:status install set value 1b
data modify storage deathswap:status version set value "v3.3"
data modify storage deathswap:status install_stage set value 1b

#reinstall
execute if data storage deathswap:status {reinstall:1b} run return fail

#ui/language
function deathswap:ui/language