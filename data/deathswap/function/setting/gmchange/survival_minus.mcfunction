#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/gmchange/survival_minus.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

$scoreboard players remove *gmchange.survival_time deathswap.setting $(minus)
execute if score *gmchange.survival_time deathswap.setting matches ..5 run scoreboard players set *gmchange.survival_time deathswap.setting 5

#en
execute if score *gmchange.survival_time deathswap.setting matches 6.. if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Survival Time"},{text:" is reduced to "},\
    [{score:{name:"*gmchange.survival_time",objective:"deathswap.setting"},color:"yellow"},"s"]\
]
execute if score *gmchange.survival_time deathswap.setting matches 5 if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Survival Time"},{text:" is reduced to "},\
    {text:"minimum of "},[{score:{name:"*gmchange.survival_time",objective:"deathswap.setting"},color:"yellow"},"s"]\
]

#zhtw 生存模式時長
execute if score *gmchange.survival_time deathswap.setting matches 6.. if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"生存模式時長"},{text:"減少為"},\
    [{score:{name:"*gmchange.survival_time",objective:"deathswap.setting"},color:"yellow"},"秒"]\
]
execute if score *gmchange.survival_time deathswap.setting matches 5 if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"生存模式時長"},{text:"減少為"},\
    {text:"最小值"},[{score:{name:"*gmchange.survival_time",objective:"deathswap.setting"},color:"yellow"},"秒"]\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
