#wait/wait_time
#timer
scoreboard players add *wait deathswap.timer 1

#bossbar
execute store result bossbar deathswap:wait value run scoreboard players get *wait deathswap.timer

execute if score *wait deathswap.timer matches 1 if score *language deathswap.setting matches 1 run bossbar set deathswap:wait name {"text":"§bThe system is being prepared!"}
execute if score *wait deathswap.timer matches 1 if score *language deathswap.setting matches 2 run bossbar set deathswap:wait name {"text":"§b系統正在準備中！"}

execute if score *wait deathswap.timer matches 300 if score *language deathswap.setting matches 1 run bossbar set deathswap:wait name {"text":"§eThe game is about to begin!"}
execute if score *wait deathswap.timer matches 300 if score *language deathswap.setting matches 2 run bossbar set deathswap:wait name {"text":"§e遊戲即將開始！"}

#title for creadits and wait
execute if score *wait deathswap.timer matches 10 run title @a times 0t 5s 1s
execute if score *wait deathswap.timer matches 10..59 if score *language deathswap.setting matches 1 run title @a title {"text": "§6Death Swap"}
execute if score *wait deathswap.timer matches 10..59 if score *language deathswap.setting matches 2 run title @a title {"text": "§6死亡交換"}

execute if score *wait deathswap.timer matches 10..39 if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§bMade by vipvincent"}
execute if score *wait deathswap.timer matches 10..39 if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§b製作：早安豆江 vipvincent"}
execute if score *wait deathswap.timer matches 40..59 if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§bThe system is being prepared"}
execute if score *wait deathswap.timer matches 40..59 if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§b系統正在準備"}

#title for generating terrain
execute if score *wait deathswap.timer matches 60..299 run title @a title ""

execute if score *wait deathswap.timer matches 60..79 if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§7⌛ Generating Terrain ⌛"}
execute if score *wait deathswap.timer matches 80..99 if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§7⌛ Generating Terrain. ⌛"}
execute if score *wait deathswap.timer matches 100..119 if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§7⌛ Generating Terrain.. ⌛"}
execute if score *wait deathswap.timer matches 120..139 if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§7⌛ Generating Terrain... ⌛"}
execute if score *wait deathswap.timer matches 140..159 if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§7⌛ Generating Terrain ⌛"}
execute if score *wait deathswap.timer matches 160..179 if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§7⌛ Generating Terrain. ⌛"}
execute if score *wait deathswap.timer matches 180..199 if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§7⌛ Generating Terrain.. ⌛"}
execute if score *wait deathswap.timer matches 200..219 if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§7⌛ Generating Terrain... ⌛"}
execute if score *wait deathswap.timer matches 220..239 if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§7⌛ Generating Terrain ⌛"}
execute if score *wait deathswap.timer matches 240..259 if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§7⌛ Generating Terrain. ⌛"}
execute if score *wait deathswap.timer matches 260..279 if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§7⌛ Generating Terrain.. ⌛"}
execute if score *wait deathswap.timer matches 280..299 if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§7⌛ Generating Terrain... ⌛"}

execute if score *wait deathswap.timer matches 60..79 if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§7⌛ 正在生成地形中 ⌛"}
execute if score *wait deathswap.timer matches 80..99 if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§7⌛ 正在生成地形中. ⌛"}
execute if score *wait deathswap.timer matches 100..119 if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§7⌛ 正在生成地形中.. ⌛"}
execute if score *wait deathswap.timer matches 120..139 if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§7⌛ 正在生成地形中... ⌛"}
execute if score *wait deathswap.timer matches 140..159 if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§7⌛ 正在生成地形中 ⌛"}
execute if score *wait deathswap.timer matches 160..179 if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§7⌛ 正在生成地形中. ⌛"}
execute if score *wait deathswap.timer matches 180..199 if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§7⌛ 正在生成地形中.. ⌛"}
execute if score *wait deathswap.timer matches 200..219 if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§7⌛ 正在生成地形中... ⌛"}
execute if score *wait deathswap.timer matches 220..239 if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§7⌛ 正在生成地形中 ⌛"}
execute if score *wait deathswap.timer matches 240..259 if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§7⌛ 正在生成地形中. ⌛"}
execute if score *wait deathswap.timer matches 260..279 if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§7⌛ 正在生成地形中.. ⌛"}
execute if score *wait deathswap.timer matches 280..299 if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§7⌛ 正在生成地形中... ⌛"}

#title for countdown
execute if score *wait deathswap.timer matches 300..399 if score *language deathswap.setting matches 1 run title @a title {"text": "§6Death Swap"}
execute if score *wait deathswap.timer matches 300..399 if score *language deathswap.setting matches 2 run title @a title {"text": "§6死亡交換"}

execute if score *wait deathswap.timer matches 300 if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§eGame Start in 5s"}
execute if score *wait deathswap.timer matches 320 if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§eGame Start in 4s"}
execute if score *wait deathswap.timer matches 340 if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§eGame Start in 3s"}
execute if score *wait deathswap.timer matches 360 if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§eGame Start in 2s"}
execute if score *wait deathswap.timer matches 380 if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§eGame Start in 1s"}

execute if score *wait deathswap.timer matches 300 if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§e遊戲即將開始於5秒"}
execute if score *wait deathswap.timer matches 320 if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§e遊戲即將開始於4秒"}
execute if score *wait deathswap.timer matches 340 if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§e遊戲即將開始於3秒"}
execute if score *wait deathswap.timer matches 360 if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§e遊戲即將開始於2秒"}
execute if score *wait deathswap.timer matches 380 if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§e遊戲即將開始於1秒"}

#sound
execute if score *wait deathswap.timer matches 300 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score *wait deathswap.timer matches 320 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score *wait deathswap.timer matches 340 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score *wait deathswap.timer matches 360 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score *wait deathswap.timer matches 380 as @a at @s run playsound ui.button.click master @s ~ ~ ~

#1-10s
execute if score *wait deathswap.timer matches 1..399 run clear @a
execute if score *wait deathswap.timer matches 1..399 run xp set @a 0 levels
execute if score *wait deathswap.timer matches 1..399 run xp set @a 0 points

#setting
execute if score *wait deathswap.timer matches 40 run function deathswap:wait/wait_setting

#gamemode
execute if score *wait deathswap.timer matches 1..39 run gamemode survival @a 
execute if score *wait deathswap.timer matches 40..400 run gamemode survival @a[tag=player]
execute if score *wait deathswap.timer matches 40..400 run gamemode spectator @a[tag=spectator]

#spectator
execute if score *wait deathswap.timer matches 1..400 run team join spectator @a[team=]
execute if score *wait deathswap.timer matches 40..400 run tag @a[team=spectator] add spectator
execute if score *wait deathswap.timer matches 40..400 run tag @a[team=spectator] remove player
execute if score *wait deathswap.timer matches 40..400 run tag @a[tag=eliminated] add spectator

#3s teleport
execute if score *wait deathswap.timer matches 61 run function deathswap:wait/teleport

#20s
execute if score *wait deathswap.timer matches 400 run function deathswap:play/inventory_limit
execute if score *wait deathswap.timer matches 400 run function deathswap:wait/give_item
execute if score *wait deathswap.timer matches 400 run function deathswap:play/start
