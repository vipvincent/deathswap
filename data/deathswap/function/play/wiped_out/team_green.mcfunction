#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/wiped_out/team_green.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players set *team_green deathswap.status 0

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Team Green",color:"green"},{text:" wiped out!"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"綠隊",color:"green"},{text:"全滅！"}\
]

#sound
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

#adv
advancement grant @a[team=green] only deathswap:main/criteria/wiped_out