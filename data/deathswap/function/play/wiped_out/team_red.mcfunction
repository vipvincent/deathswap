#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/wiped_out/team_red.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players set *team_red deathswap.status 0

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Team Red",color:"red"},{text:" wiped out!"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"紅隊",color:"red"},{text:"全滅！"}\
]

#sound
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

#adv
advancement grant @a[team=red] only deathswap:main/criteria/wiped_out