#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/leave_game.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Someone leave the game, will be eliminated!"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"似乎有人中途離開遊戲，該玩家將被自動淘汰！"}\
]
