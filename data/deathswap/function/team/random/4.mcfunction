#--------------------------------------------------
#Death Swap
#data/deathswap/function/team/random_4.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#team join random
team join red @r[team=]
team join blue @r[team=]
team join green @r[team=]
team join yellow @r[team=]

#loop
execute if entity @a[team=] run return run function deathswap:team/random/4

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Randomly divided into four teams to complete"}]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"隨機分四隊完成"}\
]

