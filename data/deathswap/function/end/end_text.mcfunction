#--------------------------------------------------
#Death Swap
#data/deathswap/function/end/end_text.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Game Over! Thanks for playing!"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"遊戲結束！感謝遊玩！"}\
]

#statistics
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Play time of this game: "},\
    [{score:{name:"*play_time",objective:"deathswap.timer"},color:"green"},"s"]\
]
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Total swap count: "},\
    {score:{name:"*swap_count",objective:"deathswap.status"},color:"green"}\
]

execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"本次遊玩時間："},\
    [{score:{name:"*play_time",objective:"deathswap.timer"},color: "green"},"秒"]\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"總共交換次數："},\
    {score:{name:"*swap_count",objective:"deathswap.status"},color:"green"}\
]

#killer
execute if entity @a[tag=killer] if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Killer: "},{selector:"@a[tag=killer]",color:"dark_red"}\
]
execute if entity @a[tag=killer] if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"殺手："},{selector:"@a[tag=killer]",color:"dark_red"}\
]

#reset
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"The game will be reset at a later date!",color:"gray"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"遊戲將在稍後重製！",color:"gray"}\
]

