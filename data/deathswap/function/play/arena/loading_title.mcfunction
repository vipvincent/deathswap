#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/arena/loading_title.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#title times
execute if score *arena deathswap.timer matches 10 run title @a times 0t 5s 1s

#title
execute if score *arena deathswap.timer matches 10..200 if score *language deathswap.setting matches 1 run title @a title {text:"Death Swap",color:"gold"}
execute if score *arena deathswap.timer matches 10..200 if score *language deathswap.setting matches 2 run title @a title {text:"死亡交換",color:"gold"}

#subtitle
execute if score *arena deathswap.timer matches 10..99 if score *language deathswap.setting matches 1 run title @a subtitle {text:"The arena is being prepared",color:"aqua"}
execute if score *arena deathswap.timer matches 100 if score *language deathswap.setting matches 1 run title @a subtitle {text:"Arena Start in 5s",color:"yellow"}
execute if score *arena deathswap.timer matches 120 if score *language deathswap.setting matches 1 run title @a subtitle {text:"Arena Start in 4s",color:"yellow"}
execute if score *arena deathswap.timer matches 140 if score *language deathswap.setting matches 1 run title @a subtitle {text:"Arena Start in 3s",color:"yellow"}
execute if score *arena deathswap.timer matches 160 if score *language deathswap.setting matches 1 run title @a subtitle {text:"Arena Start in 2s",color:"yellow"}
execute if score *arena deathswap.timer matches 180 if score *language deathswap.setting matches 1 run title @a subtitle {text:"Arena Start in 1s",color:"yellow"}
execute if score *arena deathswap.timer matches 200 if score *language deathswap.setting matches 1 run title @a subtitle {text:"Arena Started!",color:"green"}

execute if score *arena deathswap.timer matches 10..99 if score *language deathswap.setting matches 2 run title @a subtitle {text:"競技場正在準備",color:"aqua"}
execute if score *arena deathswap.timer matches 100 if score *language deathswap.setting matches 2 run title @a subtitle {text:"競技場即將開始於5秒",color:"yellow"}
execute if score *arena deathswap.timer matches 120 if score *language deathswap.setting matches 2 run title @a subtitle {text:"競技場即將開始於4秒",color:"yellow"}
execute if score *arena deathswap.timer matches 140 if score *language deathswap.setting matches 2 run title @a subtitle {text:"競技場即將開始於3秒",color:"yellow"}
execute if score *arena deathswap.timer matches 160 if score *language deathswap.setting matches 2 run title @a subtitle {text:"競技場即將開始於2秒",color:"yellow"}
execute if score *arena deathswap.timer matches 180 if score *language deathswap.setting matches 2 run title @a subtitle {text:"競技場即將開始於1秒",color:"yellow"}
execute if score *arena deathswap.timer matches 200 if score *language deathswap.setting matches 2 run title @a subtitle {text:"競技場開始！",color:"green"}

#sound
execute if score *arena deathswap.timer matches 100 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score *arena deathswap.timer matches 120 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score *arena deathswap.timer matches 140 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score *arena deathswap.timer matches 160 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score *arena deathswap.timer matches 180 as @a at @s run playsound ui.button.click master @s ~ ~ ~