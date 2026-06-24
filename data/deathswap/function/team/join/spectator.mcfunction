#--------------------------------------------------
#Death Swap
#data/deathswap/function/team/join/spectator.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#return
execute if entity @s[team=spectator] run return run function deathswap:lib/return/already_joined

#team join
team join spectator

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {selector:"@s",color:"white"},{text:" joined the "},{text:"Spectator",color:"gray"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {selector:"@s",color:"white"},{text: " 加入了"},{text:"旁觀",color:"gray"}\
]

#sound
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
