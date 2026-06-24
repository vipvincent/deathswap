#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/random_effect/default.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players set *random_effect.time deathswap.setting 60

#---
#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Random Effect Settings",color:"yellow"},{text:" have been reset"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"隨機效果設定",color:"yellow"},{text:"已重設"}\
]

#sound
execute if score *language deathswap.setting matches 1.. as @a at @s run playsound ui.button.click master @s ~ ~ ~