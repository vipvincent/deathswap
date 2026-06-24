#--------------------------------------------------
#Death Swap
#data/deathswap/function/team/join/blue.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#return
execute if entity @s[team=blue] run return run function deathswap:lib/return/already_joined

#team join
team join blue

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {selector:"@s",color:"white"},{text:" joined the "},{text:"Team Blue",color:"blue"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {selector:"@s",color:"white"},{text: " 加入了"},{text:"藍隊",color:"blue"}\
]

#sound
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
