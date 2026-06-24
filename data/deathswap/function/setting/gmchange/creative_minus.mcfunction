#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/gmchange/creative_minus.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

$scoreboard players remove *gmchange.creative_time deathswap.setting $(minus)
execute if score *gmchange.creative_time deathswap.setting matches ..1 run scoreboard players set *gmchange.creative_time deathswap.setting 1

#en
execute if score *gmchange.creative_time deathswap.setting matches 2.. if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Creative Time"},{text:" is reduced to "},\
    [{score:{name:"*gmchange.creative_time",objective:"deathswap.setting"},color:"yellow"},"s"]\
]
execute if score *gmchange.creative_time deathswap.setting matches 1 if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Creative Time"},{text:" is reduced to "},\
    {text:"minimum of "},[{score:{name:"*gmchange.creative_time",objective:"deathswap.setting"},color:"yellow"},"s"]\
]

#zhtw
execute if score *gmchange.creative_time deathswap.setting matches 2.. if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"創造模式時長"},{text:"減少為"},\
    [{score:{name:"*gmchange.creative_time",objective:"deathswap.setting"},color:"yellow"},"秒"]\
]
execute if score *gmchange.creative_time deathswap.setting matches 1 if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"創造模式時長"},{text:"減少為"},\
    {text:"最小值"},[{score:{name:"*gmchange.creative_time",objective:"deathswap.setting"},color:"yellow"},"秒"]\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
