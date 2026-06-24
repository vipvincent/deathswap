#--------------------------------------------------
#Death Swap
#data/deathswap/function/team/reset_team_non-spectator.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#team leave non-spectator
team leave @a[team=!spectator]

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {"text": "Non-spectator players "},{text:"removed from team",color:"red"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"已將旁觀者以外的玩家"},{text:"移出隊伍",color:"red"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~