#--------------------------------------------------
#Death Swap
#data/deathswap/function/team/reset_team.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#team leave
team leave @a

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {"text": "All players "},{text:"removed from team",color:"red"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"已將所有玩家"},{text:"移出隊伍",color:"red"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

