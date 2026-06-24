#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/main/team_friendlyfire.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *team_friendlyfire deathswap.setting 1
execute if score *team_friendlyfire deathswap.setting matches 2 run scoreboard players set *team_friendlyfire deathswap.setting 0

#en
execute if score *language deathswap.setting matches 1 if score *team_friendlyfire deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Team Friendly Fire"},{text:" is set "},{text:"Disable",color:"red"}\
]
execute if score *language deathswap.setting matches 1 if score *team_friendlyfire deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Team Friendly Fire"},{text:" is set "},{text:"Enabled",color:"green"}\
]

#zhtw
execute if score *language deathswap.setting matches 2 if score *team_friendlyfire deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"同隊互傷"},{text:"設定為"},{text:"關閉",color:"red"}\
]
execute if score *language deathswap.setting matches 2 if score *team_friendlyfire deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"同隊互傷"},{text:"設定為"},{text:"開啟",color:"green"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
