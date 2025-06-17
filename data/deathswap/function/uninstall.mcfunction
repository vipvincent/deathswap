#uninstall

#return
execute unless data storage deathswap:status {install:1b} run tellraw @s [{"text": "§cDeath swap is not installed yet! 尚未安裝死亡交換！"},{"text": "§f[Install 安裝] ","click_event": {"action": "run_command","command": "/function deathswap:install"},"hover_event": {"action": "show_text","value": "§eClick here or type command 點此或輸入以下指令\n§d/function deathswap:install §c[OP players OP 玩家]"}}]
execute unless data storage deathswap:status {install:1b} at @s run playsound entity.villager.no master @s ~ ~ ~
execute unless data storage deathswap:status {install:1b} run return fail

#text
execute unless data storage deathswap:status {reinstall:1b} run tellraw @a {"text": "-----------------------------------------------------"}
execute unless data storage deathswap:status {reinstall:1b} unless score language deathswap.setting matches 2.. run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fUninstalling §6Death Swap§f..."}]
execute unless data storage deathswap:status {reinstall:1b} unless score language deathswap.setting matches 2.. run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fIf you want to uninstall it completely,"}]
execute unless data storage deathswap:status {reinstall:1b} unless score language deathswap.setting matches 2.. run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fDelete file and type /reload"}]

execute unless data storage deathswap:status {reinstall:1b} if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f正在解除安裝§6死亡交換§f..."}]
execute unless data storage deathswap:status {reinstall:1b} if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f如要徹底解除安裝，請刪除檔案後輸入/reload"}]
execute unless data storage deathswap:status {reinstall:1b} run tellraw @a {"text": "-----------------------------------------------------"}

#sound
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

#forceload
execute as @e[type=marker,tag=lobby] at @s run forceload remove ~ ~

#uninstall
time set day
weather clear
clear @a
function deathswap:wait/clear_ender_chest
xp set @a 0 points
xp set @a 0 levels
effect clear @a
advancement revoke @a everything
kill @a
kill @e[type=marker,tag=start]
kill @e[type=marker,tag=pos]
kill @e[type=marker,tag=lobby]
attribute @s minecraft:max_health base set 20

#data
data remove storage deathswap:status install
data remove storage deathswap:status install_stage
data remove storage deathswap:status version
data remove storage deathswap:status random_effect

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
tag @a remove died
tag @a remove win
tag @a remove admin
tag @a remove notadmin
tag @a remove killer

#scoreboard
scoreboard objectives remove deathswap.count
scoreboard objectives remove deathswap.death
scoreboard objectives remove deathswap.health
scoreboard objectives remove deathswap.hurt
scoreboard objectives remove deathswap.status
scoreboard objectives remove deathswap.timer
scoreboard objectives remove deathswap.carrot_right_click
scoreboard objectives remove deathswap
scoreboard objectives remove deathswap.win_score
scoreboard objectives remove deathswap.setting
scoreboard objectives remove deathswap.ui_page
scoreboard objectives remove deathswap.join_game

#worldborder
worldborder center 0 0
worldborder set 59999968 0
worldborder damage buffer 5

#team
team remove red
team remove blue
team remove yellow
team remove green
team remove spectator

#gamerule
gamerule keepInventory false
gamerule doImmediateRespawn false
gamerule doDaylightCycle true
gamerule doWeatherCycle true 
gamerule naturalRegeneration true
gamerule doMobSpawning true
gamerule reducedDebugInfo false
gamerule announceAdvancements true
gamerule showDeathMessages true
gamerule sendCommandFeedback true
gamerule locatorBar true

gamerule maxEntityCramming 24
gamerule spawnRadius 10

#end
gamemode survival @a