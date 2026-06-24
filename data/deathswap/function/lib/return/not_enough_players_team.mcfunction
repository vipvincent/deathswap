#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/return/not_enough_players_team.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#text
execute if score *language deathswap.setting matches 1 run tellraw @s [\
    {storage:"deathswap:ui",nbt:"text.error_prefix",interpret:true},\
    {text:"At least two teams need players to start!"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @s [\
    {storage:"deathswap:ui",nbt:"text.error_prefix",interpret:true},\
    {text:"至少需要兩隊有玩家才能開始遊戲！"}\
]

#sound
execute at @s run playsound entity.villager.no master @s ~ ~ ~
