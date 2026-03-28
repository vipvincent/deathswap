#prepare/bossbar
bossbar set deathswap:wait players @a
execute if score *language deathswap.setting matches 1 run bossbar set deathswap:wait name [\
    {text:"You are waiting for play ",color:yellow},\
    {text:"Death Swap",color:gold}\
]
execute if score *language deathswap.setting matches 2 run bossbar set deathswap:wait name [\
    {text:"你正在等待遊玩",color:yellow},\
    {text:"死亡交換",color:gold}\
]