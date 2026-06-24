#--------------------------------------------------
#Death Swap
#data/deathswap/function/team/all_join_solo.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#all_join_solo
team join solo @a[team=!spectator]

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Add all non-spectator players to "},{text:"Game Team",color:"green"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"已將旁觀者以外的玩家加入"},{text:"遊戲隊伍",color:"green"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

