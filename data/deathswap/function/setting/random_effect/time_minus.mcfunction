#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/random_effect/time_minus.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

$scoreboard players remove *random_effect.time deathswap.setting $(minus)
execute if score *random_effect.time deathswap.setting matches ..5 run scoreboard players set *random_effect.time deathswap.setting 5

#en
execute if score *random_effect.time deathswap.setting matches 6.. if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Effect interval"},{text:" is reduced to "},\
    [{score:{name:"*random_effect.time",objective:"deathswap.setting"},color:"yellow"},"s"]\
]
execute if score *random_effect.time deathswap.setting matches 5 if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Effect interval"},{text:" is reduced to "},\
    {text:"minimum of "},[{score:{name:"*random_effect.time",objective:"deathswap.setting"},color:"yellow"},"s"]\
]

#zhtw
execute if score *random_effect.time deathswap.setting matches 6.. if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"效果間隔"},{text:"減少為"},\
    [{score:{name:"*random_effect.time",objective:"deathswap.setting"},color:"yellow"},"秒"]\
]
execute if score *random_effect.time deathswap.setting matches 5 if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"效果間隔"},{text:"減少為"},\
    {text:"最小值"},[{score:{name:"*random_effect.time",objective:"deathswap.setting"},color:"yellow"},"秒"]\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

