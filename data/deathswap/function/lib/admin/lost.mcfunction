#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/admin/lost_admin.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#tag
tag @s remove admin
tag @s remove creative
tag @s add notadmin

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {selector:"@s"},{text:" has removed "},{text:"Admin",color:"yellow"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {selector:"@s"},{text:" 失去了"},{text:"管理員權限",color:"yellow"}\
]

#sound
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

#---
#prepare stage
execute unless score *game deathswap.status matches 0 run return fail

#clear ui & gamemode
clear @s
gamemode survival @s

#title
execute if score *game deathswap.status matches 0 if score *language deathswap.setting matches 1 run title @s title {text:"Admin have been removed",color:"yellow"}
execute if score *game deathswap.status matches 0 if score *language deathswap.setting matches 2 run title @s title {text:"已移除管理員權限",color:"yellow"}
execute if score *game deathswap.status matches 0 run title @s subtitle [{"text": ""}]
