#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/return/not_support_solo.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.error_prefix",interpret:true},\
    {text:"Solo Battle does not support this setting!"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.error_prefix",interpret:true},\
    {text:"個人戰模式不支援此設定！"}\
]

#sound
execute at @s run playsound entity.villager.no master @s ~ ~ ~