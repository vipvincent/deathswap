#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/main/glowing.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *glowing deathswap.setting 1
execute if score *glowing deathswap.setting matches 2 run scoreboard players set *glowing deathswap.setting 0

#en
execute if score *language deathswap.setting matches 1 if score *glowing deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Glowing Effect"},{text:" is set "},{text:"Disable",color:"red"}\
]
execute if score *language deathswap.setting matches 1 if score *glowing deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Glowing Effect"},{text:" is set "},{text:"Enabled",color:"green"}\
]

#zhtw
execute if score *language deathswap.setting matches 2 if score *glowing deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"發光效果"},{text:"設定為"},{text:"關閉",color:"red"}\
]
execute if score *language deathswap.setting matches 2 if score *glowing deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"發光效果"},{text:"設定為"},{text:"開啟",color:"green"}\
]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
