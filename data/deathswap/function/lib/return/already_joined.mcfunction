#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/return/not_support_solo.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.error_prefix",interpret:true},\
    {text:"You have already joined this team!"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.error_prefix",interpret:true},\
    {text:"你已經加入此隊伍了！"}\
]

#sound
execute at @s run playsound entity.villager.no master @s ~ ~ ~