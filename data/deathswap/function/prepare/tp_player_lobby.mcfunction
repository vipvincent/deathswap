#--------------------------------------------------
#Death Swap
#data/deathswap/function/prepare/tp_player_lobby.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#return
execute unless entity @e[tag=lobby] run return run function deathswap:lib/return/no_lobby

#tp lobby
tp @a @e[tag=lobby,limit=1]

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Teleport "},\
    {text:"All Players",color:"yellow"},\
    {text:" to Game Lobby"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"傳送"},\
    {text:"所有玩家",color:"yellow"},\
    {text:"到遊戲大廳"}\
]

#sound
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
