#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/damage_taken/text.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#en
$execute if score *language deathswap.setting matches 1 run tellraw $(show) [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {selector:"@s"},{text:" is taking "},\
    [\
        {score:{name:"*temp.integer",objective:"deathswap.damage_taken"},color:"light_purple"},".",\
        {score:{name:"*temp.decimals",objective:"deathswap.damage_taken"}}\
    ],\
    {text:" damage!"}\
]

#zhtw
$execute if score *language deathswap.setting matches 2 run tellraw $(show) [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {selector:"@s"},{text:" 正在受到 "},\
    [\
        {score:{name:"*temp.integer",objective:"deathswap.damage_taken"},color:"light_purple"},".",\
        {score:{name:"*temp.decimals",objective:"deathswap.damage_taken"}}\
    ],\
    {text:" 點傷害！"}\
]
