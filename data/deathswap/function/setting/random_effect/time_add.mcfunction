#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/random_effect/time_add.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

$scoreboard players add *random_effect.time deathswap.setting $(add)
execute if score *random_effect.time deathswap.setting matches 50000.. run scoreboard players set *random_effect.time deathswap.setting 50000

#en
execute if score *random_effect.time deathswap.setting matches ..49999 if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Effect interval"},{text:" is increased to "},\
    [{score:{name:"*random_effect.time",objective:"deathswap.setting"},color:"yellow"},"s"]\
]
execute if score *random_effect.time deathswap.setting matches 50000 if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Effect interval"},{text:" is increased to "},\
    {text:"maximum of "},[{score:{name:"*random_effect.time",objective:"deathswap.setting"},color:"yellow"},"s"]\
]

#zhtw
execute if score *random_effect.time deathswap.setting matches ..49999 if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"效果間隔"},{text:"增加為"},\
    [{score:{name:"*random_effect.time",objective:"deathswap.setting"},color:"yellow"},"秒"]\
]
execute if score *random_effect.time deathswap.setting matches 50000 if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"效果間隔"},{text:"增加為"},\
    {text:"最大值"},[{score:{name:"*random_effect.time",objective:"deathswap.setting"},color:"yellow"},"秒"]\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

