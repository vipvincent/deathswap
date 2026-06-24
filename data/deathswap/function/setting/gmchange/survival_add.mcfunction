#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/gmchange/survival_add.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

$scoreboard players add *gmchange.survival_time deathswap.setting $(add)

#en
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Survival Time"},{text:" is increased to "},\
    [{score:{name:"*gmchange.survival_time",objective:"deathswap.setting"},color:"yellow"},"s"]\
]

#zhtw
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"生存模式時長"},{text:"增加為"},\
    [{score:{name:"*gmchange.survival_time",objective:"deathswap.setting"},color:"yellow"},"秒"]\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
