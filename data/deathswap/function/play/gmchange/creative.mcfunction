#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/gmchange/creative.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players set *gmchange deathswap.status 1
scoreboard players operation *gmchange.time deathswap.timer = *gmchange.creative_time deathswap.setting

gamemode creative @a[tag=player]

title @a title ""
execute if score *language deathswap.setting matches 1 run title @a subtitle {text:"Creative",color:"red"}
execute if score *language deathswap.setting matches 2 run title @a subtitle {text:"創造模式",color:"red"}

execute as @a at @s run playsound block.note_block.guitar master @s ~ ~ ~