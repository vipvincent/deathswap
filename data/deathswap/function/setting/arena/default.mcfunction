#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/arena/default.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#gmchange
scoreboard players set *arena.start deathswap.setting 10
scoreboard players set *arena.border deathswap.setting 500
scoreboard players set *arena.shrink deathswap.setting 1

#---
#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Arena Settings",color:"yellow"},{text:" have been reset"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"競技場設定",color:"yellow"},{text:"已重設"}\
]

#sound
execute if score *language deathswap.setting matches 1.. as @a at @s run playsound ui.button.click master @s ~ ~ ~