#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/return/not_enough_players_solo.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#text
execute if score *language deathswap.setting matches 1 run tellraw @s [\
    {storage:"deathswap:ui",nbt:"text.error_prefix",interpret:true},\
    {text:"Need at least two players in the Game Team to start!"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @s [\
    {storage:"deathswap:ui",nbt:"text.error_prefix",interpret:true},\
    {text:"至少需要兩位玩家在遊戲隊伍裡才能開始遊戲！"}\
]

#sound
execute at @s run playsound entity.villager.no master @s ~ ~ ~
