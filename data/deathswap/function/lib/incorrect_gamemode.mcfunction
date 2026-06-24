#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/incorrect_gamemode.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {selector:"@s"},{text:" had an incorrect Game Mode, now fixed."}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {selector:"@s"},{text:" 的遊戲模式似乎是錯的，已修正此問題。"}\
]

$gamemode $(gamemode) @s