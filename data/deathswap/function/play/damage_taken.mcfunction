#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/damage_taken.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#integer/decimals
scoreboard players operation *temp.integer deathswap.damage_taken = @s deathswap.damage_taken
scoreboard players operation *temp.decimals deathswap.damage_taken = @s deathswap.damage_taken
scoreboard players operation *temp.integer deathswap.damage_taken /= #operation.10 deathswap.status
scoreboard players operation *temp.decimals deathswap.damage_taken %= #operation.10 deathswap.status

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {selector:"@s"},{text:" is taking "},\
    [\
        {score:{name:"*temp.integer",objective:"deathswap.damage_taken"},color:"light_purple"},".",\
        {score:{name:"*temp.decimals",objective:"deathswap.damage_taken"}}\
    ],\
    {text:" damage!"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {selector:"@s"},{text:" 正在受到 "},\
    [\
        {score:{name:"*temp.integer",objective:"deathswap.damage_taken"},color:"light_purple"},".",\
        {score:{name:"*temp.decimals",objective:"deathswap.damage_taken"}}\
    ],\
    {text:" 點傷害！"}\
]

#reset
scoreboard players reset @s deathswap.damage_taken
scoreboard players reset *temp.integer deathswap.damage_taken
scoreboard players reset *temp.decimals deathswap.damage_taken