#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/main/difficulty.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *difficulty deathswap.setting 1
execute if score *difficulty deathswap.setting matches 4 run scoreboard players set *difficulty deathswap.setting 0

#en
execute if score *language deathswap.setting matches 1 if score *difficulty deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Difficulty"},{text:" is set "},{text:"Peaceful",color:"yellow"}\
]
execute if score *language deathswap.setting matches 1 if score *difficulty deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Difficulty"},{text:" is set "},{text:"Easy",color:"yellow"}\
]
execute if score *language deathswap.setting matches 1 if score *difficulty deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Difficulty"},{text:" is set "},{text:"Normal",color:"yellow"}\
]
execute if score *language deathswap.setting matches 1 if score *difficulty deathswap.setting matches 3 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Difficulty"},{text:" is set "},{text:"Hard",color:"yellow"}\
]

#zhtw
execute if score *language deathswap.setting matches 2 if score *difficulty deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"難度"},{text:"設定為"},{text:"和平",color:"yellow"}\
]
execute if score *language deathswap.setting matches 2 if score *difficulty deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"難度"},{text:"設定為"},{text:"簡單",color:"yellow"}\
]
execute if score *language deathswap.setting matches 2 if score *difficulty deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"難度"},{text:"設定為"},{text:"普通",color:"yellow"}\
]
execute if score *language deathswap.setting matches 2 if score *difficulty deathswap.setting matches 3 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"難度"},{text:"設定為"},{text:"困難",color:"yellow"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
