#--------------------------------------------------
#Death Swap
#data/deathswap/function/prepare/tp_player_here.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#tp 
tp @a @s

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Teleport "},\
    {text:"All Players",color:"yellow"},\
    {text:" to "},\
    {selector:"@s",color:"white"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"傳送"},\
    {text:"所有玩家",color:"yellow"},\
    {text:"到 "},\
    {selector:"@s",color:"white"}\
]

#sound
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
