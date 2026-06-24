#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/gmchange/survival.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players set *gmchange deathswap.status 0
scoreboard players operation *gmchange.time deathswap.timer = *gmchange.survival_time deathswap.setting

gamemode survival @a[tag=player]

title @a title ""
execute if score *language deathswap.setting matches 1 run title @a subtitle {text:"Survival",color:"green"}
execute if score *language deathswap.setting matches 2 run title @a subtitle {text:"生存模式",color:"green"}

execute as @a at @s run playsound block.note_block.hat master @s ~ ~ ~