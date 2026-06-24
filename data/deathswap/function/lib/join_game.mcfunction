#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/join_game.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#add tag notadmin
execute as @s[tag=!notadmin,tag=!admin] run tag @s add notadmin

#info
execute if score *language deathswap.setting matches 1.. run function deathswap:ui/info

#welcome text
execute unless score @s deathswap.leave_game matches 0.. if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Welcome "},{selector:"@s",color:"white"},{text:" to "},{text:"Death Swap",color:gold},{text:" for the first time!"}\
]
execute if score @s deathswap.leave_game matches 1 if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Welcome back to the "},{text:"Death Swap",color:gold},{text:", "},{selector:"@s",color:"white"},{text:"!"}\
]

execute unless score @s deathswap.leave_game matches 0.. if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"歡迎 "},{selector:"@s",color:"white"},{text:" 首次來到"},{text:"死亡交換",color:gold},{text:"！"}\
]
execute if score @s deathswap.leave_game matches 1 if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"歡迎回到"},{text:"死亡交換",color:gold},{text:"，"},{selector:"@s",color:"white"},{text:"！"}\
]

#welcome title
execute if score *language deathswap.setting matches 1 run title @s title {text:"Death Swap",color:gold}
execute if score *language deathswap.setting matches 1 run title @s subtitle {text:"Made by vipvincent",color:aqua}

execute if score *language deathswap.setting matches 2 run title @s title {text:"死亡交換",color:gold}
execute if score *language deathswap.setting matches 2 run title @s subtitle {text:"製作：vipvincent",color:aqua}

#welcome sound
execute if score *language deathswap.setting matches 1.. run execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

#---
#status 0
execute if score *game deathswap.status matches 0 run effect clear @a
execute if score *game deathswap.status matches 0 run clear @s
execute if score *game deathswap.status matches 0 run xp set @a 0 points
execute if score *game deathswap.status matches 0 run xp set @a 0 levels
execute if score *game deathswap.status matches 0 run tp @s @e[tag=lobby,limit=1]
execute if score *game deathswap.status matches 0 run gamemode survival @s
execute if score *game deathswap.status matches 0 run team leave @s
execute if score *game deathswap.status matches 0 run tag @s remove player
execute if score *game deathswap.status matches 0 run tag @s remove spectator
execute if score *game deathswap.status matches 0 run tag @s remove eliminated
execute if score *game deathswap.status matches 0 run tag @s remove win
execute if score *game deathswap.status matches 0 run tag @s remove killer
execute if score *game deathswap.status matches 0 run function deathswap:lib/still/off

execute if score *game deathswap.status matches 0 run function deathswap:ui/admin_tip

#---
#status 2 play join
execute if score *game deathswap.status matches 2 if score *language deathswap.setting matches 1 if entity @s[tag=player] run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {selector:"@s",color:"white"},{text:" auto-eliminated for leaving, now spectating."}\
]
execute if score *game deathswap.status matches 2 if score *language deathswap.setting matches 2 if entity @s[tag=player] run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {selector:"@s",color:"white"},{text:" 因為中途離開遊戲而被自動淘汰，並加入旁觀。"}\
]
execute if score *game deathswap.status matches 2 run kill @s

#---
#spectator
execute if score *game deathswap.status matches 1..3 run team join spectator @s
execute if score *game deathswap.status matches 1..3 run gamemode spectator @s
