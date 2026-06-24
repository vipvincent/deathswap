#--------------------------------------------------
#Death Swap
#data/deathswap/function/end/tick.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#actionbar
execute if score *language deathswap.setting matches 1 run function deathswap:ui/actionbar/en/end
execute if score *language deathswap.setting matches 2 run function deathswap:ui/actionbar/tw/end

#gamemode
gamemode survival @a[tag=player]
gamemode spectator @a[tag=!player]

#---
#timer
scoreboard players add *end deathswap.timer 1

#sound
execute if score *end deathswap.timer matches 100 as @a at @s run playsound entity.ender_dragon.death master @s ~ ~ ~

#end text
execute if score *end deathswap.timer matches 100 run function deathswap:end/end_text

#end title
execute if score *end deathswap.timer matches 100 if score *language deathswap.setting matches 1 run title @a title {text:"Game Over!",color:"aqua"}
execute if score *end deathswap.timer matches 100 if score *language deathswap.setting matches 1 run title @a subtitle {text:"Thanks for playing",color:"aqua"}
execute if score *end deathswap.timer matches 100 if score *language deathswap.setting matches 2 run title @a title {text:"遊戲結束！",color:"aqua"}
execute if score *end deathswap.timer matches 100 if score *language deathswap.setting matches 2 run title @a subtitle {text:"感謝遊玩",color:"aqua"}

#credits title
execute if score *end deathswap.timer matches 200 if score *language deathswap.setting matches 1 run title @a title {text:"Death Swap",color:"gold"}
execute if score *end deathswap.timer matches 200 if score *language deathswap.setting matches 1 run title @a subtitle {text:"Made by vipvincent",color:"aqua"}
execute if score *end deathswap.timer matches 200 if score *language deathswap.setting matches 2 run title @a title {text:"死亡交換",color:"gold"}
execute if score *end deathswap.timer matches 200 if score *language deathswap.setting matches 2 run title @a subtitle {text:"製作：vipvincent",color:"aqua"}

#reset
execute if score *end deathswap.timer matches 300 run function deathswap:reset