#--------------------------------------------------
#Death Swap
#data/deathswap/function/team/join/yellow.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#return
execute if entity @s[team=yellow] run return run function deathswap:lib/return/already_joined

#team join
team join yellow

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {selector:"@s",color:"white"},{text:" joined the "},{text:"Team Yellow",color:"yellow"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {selector:"@s",color:"white"},{text: " 加入了"},{text:"黃隊",color:"yellow"}\
]

#sound
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
