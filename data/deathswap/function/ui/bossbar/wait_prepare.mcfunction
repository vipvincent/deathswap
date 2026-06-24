#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/bossbar/wait_prepare.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#visable
bossbar set deathswap:wait players @a

#name
execute if score *language deathswap.setting matches 1 run bossbar set deathswap:wait name [\
    {text:"You are playing ",color:yellow},\
    {text:"Death Swap",color:gold}\
]
execute if score *language deathswap.setting matches 2 run bossbar set deathswap:wait name [\
    {text:"你正在遊玩",color:yellow},\
    {text:"死亡交換",color:gold}\
]