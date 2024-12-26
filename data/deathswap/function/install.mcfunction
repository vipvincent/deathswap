#install_stage
execute if data storage deathswap:status {install_stage:1b} unless score language deathswap.setting matches 1.. run function deathswap:ui/language
execute if data storage deathswap:status {install_stage:1b} if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§6Death Swap §finstall completed!"}]
execute if data storage deathswap:status {install_stage:1b} if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§6死亡交換§f安裝完成！"}]
execute if data storage deathswap:status {install_stage:1b} if score language deathswap.setting matches 1.. run function deathswap:reset
execute if data storage deathswap:status {install_stage:1b} if score language deathswap.setting matches 1.. run return run data remove storage deathswap:status install_stage

#check install
execute if data storage deathswap:status {install:1b} unless score language deathswap.setting matches 2.. run tellraw @s [{"text": "§cYou have installed Death Swap!"},{"text": " §d[Reinstall]","clickEvent": {"action": "run_command","value": "/function deathswap:reinstall"},"hoverEvent": {"action": "show_text","contents": "⚠ Only for OP players\n/function deathswap:reinstall"}},{"text": " §4[Uninstall]","clickEvent": {"action": "run_command","value": "/function deathswap:uninstall"},"hoverEvent": {"action": "show_text","contents": "⚠ Only for OP players\n/function deathswap:uninstall"}}]
execute if data storage deathswap:status {install:1b} if score language deathswap.setting matches 2 run tellraw @s [{"text": "§c你已經安裝死亡交換！"},{"text": " §d[重新安裝]","clickEvent": {"action": "run_command","value": "/function deathswap:reinstall"},"hoverEvent": {"action": "show_text","contents": "⚠ 限OP玩家使用\n/function deathswap:reinstall"}},{"text": " §4[解除安裝]","clickEvent": {"action": "run_command","value": "/function deathswap:uninstall"},"hoverEvent": {"action": "show_text","contents": "⚠ 限OP玩家使用\n/function deathswap:uninstall"}}]
execute if data storage deathswap:status {install:1b} as @s at @s run playsound entity.villager.no master @s ~ ~ ~
execute if data storage deathswap:status {install:1b} run return fail

execute unless data storage deathswap:status {reinstall:1b} run tellraw @a {"text": "---------------------------------------------------"}
execute unless data storage deathswap:status {reinstall:1b} run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fInstalling §6Death Swap§f... §f正在安裝§6死亡交換§f..."}]
execute unless data storage deathswap:status {reinstall:1b} run tellraw @a {"text": "---------------------------------------------------"}
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

#gamerule
gamerule doImmediateRespawn true
gamerule sendCommandFeedback false
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
scoreboard objectives add deathswap.warped_right_click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add deathswap.carrot_right_click minecraft.used:minecraft.carrot_on_a_stick

scoreboard players set team_choose deathswap.setting 0
scoreboard players set safetime deathswap.timer 30

#health
scoreboard objectives add deathswap.health health
scoreboard objectives add deathswap.hurt dummy
scoreboard objectives setdisplay below_name deathswap.health
scoreboard objectives modify deathswap.health displayname {"text": "§c❤"}

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

#
scoreboard players set @a deathswap.join_game 1
tag @a add notadmin

#setting default
function deathswap:setting/default_all

#install
data modify storage deathswap:status install set value 1b
data modify storage deathswap:status version set value "v3.0"
data modify storage deathswap:status install_stage set value 1b

#for install player give admin rights
tag @s add admin

execute if data storage deathswap:status {reinstall:1b} run return fail
function deathswap:ui/language