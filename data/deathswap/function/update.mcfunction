#update
#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {"text": "§6Death Swap§7 | §r"},\
    {text: "Found a new version and will reinstall it soon...",color:yellow}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    "",{text: "死亡交換",color:gold},{text:" | ",color:gray},\
    {text: "找到新版本，即將重新安裝...",color:yellow}\
]

#reinstall
function deathswap:reinstall