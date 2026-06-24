#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/wiped_out/team_blue.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players set *team_blue deathswap.status 0

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Team Blue",color:"blue"},{text:" wiped out!"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"藍隊",color:"blue"},{text:"全滅！"}\
]

#sound
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

#adv
advancement grant @a[team=blue] only deathswap:main/criteria/wiped_out