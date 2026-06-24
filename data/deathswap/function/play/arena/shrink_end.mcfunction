#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/arena/shrink_end.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

bossbar set deathswap:arena visible false
scoreboard players set *arena.shrink deathswap.status 2
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Now the remaining players will glow!"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"現在剩餘的玩家將會發光！"}\
]