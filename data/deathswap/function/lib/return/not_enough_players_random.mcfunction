#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/return/not_enough_players_random.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#text
execute if score *language deathswap.setting matches 1 run tellraw @s [\
    {storage:"deathswap:ui",nbt:"text.error_prefix",interpret:true},\
    {text:"There are not enough people to divide into teams!"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @s [\
    {storage:"deathswap:ui",nbt:"text.error_prefix",interpret:true},\
    {text:"人數不足，無法分隊！"}\
]

#sound
execute at @s run playsound entity.villager.no master @s ~ ~ ~
