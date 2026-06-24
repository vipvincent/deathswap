#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/return/already_installed.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#text
execute unless score *language deathswap.setting matches 2.. run tellraw @s [\
    {storage:"deathswap:ui",nbt:"text.error_prefix",interpret:true},\
    {text: "You have installed Death Swap! "}\
]
execute if score *language deathswap.setting matches 2 run tellraw @s [\
    {storage:"deathswap:ui",nbt:"text.error_prefix",interpret:true},\
    {text: "你已經安裝死亡交換！ "}\
]

#sound
execute at @s run playsound entity.villager.no master @s ~ ~ ~