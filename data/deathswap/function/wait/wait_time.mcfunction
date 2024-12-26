scoreboard players add wait deathswap.timer 1
function deathswap:wait/actionbar

#bossbar
bossbar set deathswap:wait max 200
execute store result bossbar deathswap:wait value run scoreboard players get wait deathswap.timer
execute if score wait deathswap.timer matches 1 if score language deathswap.setting matches 1 run bossbar set deathswap:wait name {"text":"§bThe system is being prepared"}
execute if score wait deathswap.timer matches 1 if score language deathswap.setting matches 2 run bossbar set deathswap:wait name {"text":"§b系統正在準備中"}
execute if score wait deathswap.timer matches 140 if score language deathswap.setting matches 1 run bossbar set deathswap:wait name {"text":"§eThe game is about to begin"}
execute if score wait deathswap.timer matches 140 if score language deathswap.setting matches 2 run bossbar set deathswap:wait name {"text":"§e遊戲即將開始"}

#0.05s
execute if score wait deathswap.timer matches 1..200 run clear @a
execute if score wait deathswap.timer matches 1..200 run xp set @a 0 levels
execute if score wait deathswap.timer matches 1..200 run xp set @a 0 points

#2s
execute if score wait deathswap.timer matches 40 run function deathswap:wait/wait_setting

#gamemode
execute if score wait deathswap.timer matches 1..39 run gamemode survival @a 
execute if score wait deathswap.timer matches 40..200 run gamemode survival @a[tag=player]
execute if score wait deathswap.timer matches 40..200 run gamemode spectator @a[tag=spectator]

#spectator
execute if score wait deathswap.timer matches 40..200 run team join spectator @a[team=]
execute if score wait deathswap.timer matches 40..200 run tag @a[team=spectator] add spectator
execute if score wait deathswap.timer matches 40..200 run tag @a[team=spectator] remove player
execute if score wait deathswap.timer matches 40..200 run tag @a[tag=died] add spectator

#3s teleport
execute if score wait deathswap.timer matches 60 run function deathswap:wait/teleport
execute if score wait deathswap.timer matches 60 run advancement revoke @a everything
execute if score wait deathswap.timer matches 60 run gamerule announceAdvancements true

#sound
execute if score wait deathswap.timer matches 140 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score wait deathswap.timer matches 160 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score wait deathswap.timer matches 180 as @a at @s run playsound ui.button.click master @s ~ ~ ~

#title
execute if score wait deathswap.timer matches 10 run title @a times 0t 5s 1s
execute if score wait deathswap.timer matches 10..200 if score language deathswap.setting matches 1 run title @a title {"text": "§6Death Swap"}
execute if score wait deathswap.timer matches 10..200 if score language deathswap.setting matches 2 run title @a title {"text": "§6死亡交換"}
execute if score wait deathswap.timer matches 10..49 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§bMade by vipvincent"}
execute if score wait deathswap.timer matches 10..49 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§b製作：早安豆江 vipvincent"}
execute if score wait deathswap.timer matches 50..99 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§bThe system is being prepared"}
execute if score wait deathswap.timer matches 50..99 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§b系統正在準備"}

execute if score wait deathswap.timer matches 100 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§eGame Start in 5s"}
execute if score wait deathswap.timer matches 100 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§e遊戲即將開始於5秒"}
execute if score wait deathswap.timer matches 120 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§eGame Start in 4s"}
execute if score wait deathswap.timer matches 120 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§e遊戲即將開始於4秒"}
execute if score wait deathswap.timer matches 140 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§eGame Start in 3s"}
execute if score wait deathswap.timer matches 140 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§e遊戲即將開始於3秒"}
execute if score wait deathswap.timer matches 160 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§eGame Start in 2s"}
execute if score wait deathswap.timer matches 160 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§e遊戲即將開始於2秒"}
execute if score wait deathswap.timer matches 180 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§eGame Start in 1s"}
execute if score wait deathswap.timer matches 180 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§e遊戲即將開始於1秒"}
execute if score wait deathswap.timer matches 200 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§aGame Started!"}
execute if score wait deathswap.timer matches 200 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§a遊戲開始！"}

#sound
execute if score wait deathswap.timer matches 140 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score wait deathswap.timer matches 160 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score wait deathswap.timer matches 180 as @a at @s run playsound ui.button.click master @s ~ ~ ~


#10s
execute if score wait deathswap.timer matches 200 run kill @e[type=marker,tag=start]
execute if score wait deathswap.timer matches 200 run function deathswap:play/start
