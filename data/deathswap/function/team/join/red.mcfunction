#--------------------------------------------------
#Death Swap
#data/deathswap/function/team/join/red.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#return
execute if entity @s[team=red] run return run function deathswap:lib/return/already_joined

#team join
team join red

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {selector:"@s",color:"white"},{text:" joined the "},{text:"Team Red",color:"red"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {selector:"@s",color:"white"},{text: " 加入了"},{text:"紅隊",color:"red"}\
]

#sound
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
