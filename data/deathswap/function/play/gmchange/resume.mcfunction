#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/gmchange/resume.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players set *gmchange.pause deathswap.timer -1

execute if score *gmchange deathswap.status matches 0 run gamemode survival @a[tag=player]
execute if score *gmchange deathswap.status matches 1 run gamemode creative @a[tag=player]

#title
title @a title ""

execute if score *language deathswap.setting matches 1 if score *gmchange deathswap.status matches 0 run title @a subtitle [{text:"Gamemode Change Resumed: ",color:"yellow"},{text:"Survival",color:"green"}]
execute if score *language deathswap.setting matches 1 if score *gmchange deathswap.status matches 1 run title @a subtitle [{text:"Gamemode Change Resumed: ",color:"yellow"},{text:"Creative",color:"red"}]

execute if score *language deathswap.setting matches 2 if score *gmchange deathswap.status matches 0 run title @a subtitle [{text:"遊戲模式切換恢復：",color:"yellow"},{text:"生存模式",color:"green"}]
execute if score *language deathswap.setting matches 2 if score *gmchange deathswap.status matches 1 run title @a subtitle [{text:"遊戲模式切換恢復：",color:"yellow"},{text:"創造模式",color:"red"}]

#sound
execute if score *gmchange deathswap.status matches 0 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~
execute if score *gmchange deathswap.status matches 1 as @a at @s run playsound block.note_block.guitar master @s ~ ~ ~