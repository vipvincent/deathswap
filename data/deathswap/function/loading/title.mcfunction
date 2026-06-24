#--------------------------------------------------
#Death Swap
#data/deathswap/function/loading/title.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#title for creadits and wait
execute if score *loading deathswap.timer matches 10 run title @a times 0t 5s 1s
execute if score *loading deathswap.timer matches 10..59 if score *language deathswap.setting matches 1 run title @a title {text:"Death Swap",color:"gold"}
execute if score *loading deathswap.timer matches 10..59 if score *language deathswap.setting matches 2 run title @a title {text:"死亡交換",color:"gold"}

execute if score *loading deathswap.timer matches 10..29 if score *language deathswap.setting matches 1 run title @a subtitle {text:"Made by vipvincent",color:"aqua"}
execute if score *loading deathswap.timer matches 10..29 if score *language deathswap.setting matches 2 run title @a subtitle {text:"製作：vipvincent",color:"aqua"}
execute if score *loading deathswap.timer matches 30..59 if score *language deathswap.setting matches 1 run title @a subtitle {text:"The system is being prepared",color:"yellow"}
execute if score *loading deathswap.timer matches 30..59 if score *language deathswap.setting matches 2 run title @a subtitle {text:"系統正在準備",color:"yellow"}

#---
#title for generating terrain
execute if score *loading deathswap.timer matches 60..299 run title @a title ""

execute if score *loading deathswap.timer matches 60..79 if score *language deathswap.setting matches 1 run title @a subtitle {text:"⌛ Generating Terrain ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 80..99 if score *language deathswap.setting matches 1 run title @a subtitle {text:"⌛ Generating Terrain. ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 100..119 if score *language deathswap.setting matches 1 run title @a subtitle {text:"⌛ Generating Terrain.. ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 120..139 if score *language deathswap.setting matches 1 run title @a subtitle {text:"⌛ Generating Terrain... ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 140..159 if score *language deathswap.setting matches 1 run title @a subtitle {text:"⌛ Generating Terrain ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 160..179 if score *language deathswap.setting matches 1 run title @a subtitle {text:"⌛ Generating Terrain. ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 180..199 if score *language deathswap.setting matches 1 run title @a subtitle {text:"⌛ Generating Terrain.. ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 200..219 if score *language deathswap.setting matches 1 run title @a subtitle {text:"⌛ Generating Terrain... ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 220..239 if score *language deathswap.setting matches 1 run title @a subtitle {text:"⌛ Generating Terrain ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 240..259 if score *language deathswap.setting matches 1 run title @a subtitle {text:"⌛ Generating Terrain. ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 260..279 if score *language deathswap.setting matches 1 run title @a subtitle {text:"⌛ Generating Terrain.. ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 280..299 if score *language deathswap.setting matches 1 run title @a subtitle {text:"⌛ Generating Terrain... ⌛",color:"gray"}

execute if score *loading deathswap.timer matches 60..79 if score *language deathswap.setting matches 2 run title @a subtitle {text:"⌛ 正在生成地形中 ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 80..99 if score *language deathswap.setting matches 2 run title @a subtitle {text:"⌛ 正在生成地形中. ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 100..119 if score *language deathswap.setting matches 2 run title @a subtitle {text:"⌛ 正在生成地形中.. ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 120..139 if score *language deathswap.setting matches 2 run title @a subtitle {text:"⌛ 正在生成地形中... ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 140..159 if score *language deathswap.setting matches 2 run title @a subtitle {text:"⌛ 正在生成地形中 ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 160..179 if score *language deathswap.setting matches 2 run title @a subtitle {text:"⌛ 正在生成地形中. ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 180..199 if score *language deathswap.setting matches 2 run title @a subtitle {text:"⌛ 正在生成地形中.. ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 200..219 if score *language deathswap.setting matches 2 run title @a subtitle {text:"⌛ 正在生成地形中... ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 220..239 if score *language deathswap.setting matches 2 run title @a subtitle {text:"⌛ 正在生成地形中 ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 240..259 if score *language deathswap.setting matches 2 run title @a subtitle {text:"⌛ 正在生成地形中. ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 260..279 if score *language deathswap.setting matches 2 run title @a subtitle {text:"⌛ 正在生成地形中.. ⌛",color:"gray"}
execute if score *loading deathswap.timer matches 280..299 if score *language deathswap.setting matches 2 run title @a subtitle {text:"⌛ 正在生成地形中... ⌛",color:"gray"}

#---
#title for countdown
execute if score *loading deathswap.timer matches 300..399 if score *language deathswap.setting matches 1 run title @a title {text:"Death Swap",color:"gold"}
execute if score *loading deathswap.timer matches 300..399 if score *language deathswap.setting matches 2 run title @a title {text:"死亡交換",color:"gold"}

execute if score *loading deathswap.timer matches 300 if score *language deathswap.setting matches 1 run title @a subtitle {text:"Game Start in 5s",color:"yellow"}
execute if score *loading deathswap.timer matches 320 if score *language deathswap.setting matches 1 run title @a subtitle {text:"Game Start in 4s",color:"yellow"}
execute if score *loading deathswap.timer matches 340 if score *language deathswap.setting matches 1 run title @a subtitle {text:"Game Start in 3s",color:"yellow"}
execute if score *loading deathswap.timer matches 360 if score *language deathswap.setting matches 1 run title @a subtitle {text:"Game Start in 2s",color:"yellow"}
execute if score *loading deathswap.timer matches 380 if score *language deathswap.setting matches 1 run title @a subtitle {text:"Game Start in 1s",color:"yellow"}

execute if score *loading deathswap.timer matches 300 if score *language deathswap.setting matches 2 run title @a subtitle {text:"遊戲即將開始於5秒",color:"yellow"}
execute if score *loading deathswap.timer matches 320 if score *language deathswap.setting matches 2 run title @a subtitle {text:"遊戲即將開始於4秒",color:"yellow"}
execute if score *loading deathswap.timer matches 340 if score *language deathswap.setting matches 2 run title @a subtitle {text:"遊戲即將開始於3秒",color:"yellow"}
execute if score *loading deathswap.timer matches 360 if score *language deathswap.setting matches 2 run title @a subtitle {text:"遊戲即將開始於2秒",color:"yellow"}
execute if score *loading deathswap.timer matches 380 if score *language deathswap.setting matches 2 run title @a subtitle {text:"遊戲即將開始於1秒",color:"yellow"}

#sound
execute if score *loading deathswap.timer matches 300 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score *loading deathswap.timer matches 320 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score *loading deathswap.timer matches 340 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score *loading deathswap.timer matches 360 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score *loading deathswap.timer matches 380 as @a at @s run playsound ui.button.click master @s ~ ~ ~