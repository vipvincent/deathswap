#play/incorrect_gamemode

execute if score *language deathswap.setting matches 1 run tellraw @a [\
    "",{text:"Death Swap",color:gold},{text:" | ",color:gray},\
    {selector:"@s"},\
    {text:" had an incorrect Game Mode, now fixed."}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    "",{text:"死亡交換",color:gold},{text:" | ",color:gray},\
    {selector:"@s"},\
    {text:" 的遊戲模式似乎是錯的，已修正此問題。"}\
]

$gamemode $(gamemode) @s