#--------------------------------------------------
#Death Swap
#data/deathswap/function/update.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#text
execute unless score *language deathswap.setting matches 2.. run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Found a new version and will reinstall it soon...",color:"yellow"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"找到新版本，即將重新安裝...",color:"yellow"}\
]

#reinstall
function deathswap:reinstall