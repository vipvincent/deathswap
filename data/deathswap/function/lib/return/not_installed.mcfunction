#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/return/not_installed.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#text
tellraw @s [\
    {text:"Error > ",color:red},\
    {text:"Death Swap is not installed yet! 尚未安裝死亡交換！"}\
]

#sound
execute at @s run playsound entity.villager.no master @s ~ ~ ~