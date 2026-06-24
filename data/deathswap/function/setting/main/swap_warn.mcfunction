#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/main/swap_warn.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *swap_warn deathswap.setting 1
execute if score *swap_warn deathswap.setting matches 1 run scoreboard players set *swap_warn deathswap.setting 3
execute if score *swap_warn deathswap.setting matches 4 run scoreboard players set *swap_warn deathswap.setting 5
execute if score *swap_warn deathswap.setting matches 6 run scoreboard players set *swap_warn deathswap.setting 10
execute if score *swap_warn deathswap.setting matches 11.. run scoreboard players set *swap_warn deathswap.setting 0

#en Swap Warn
execute if score *language deathswap.setting matches 1 if score *swap_warn deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Swap Warn"},{text:" is set "},{text:"Disable",color:"red"}\
]
execute if score *language deathswap.setting matches 1 if score *swap_warn deathswap.setting matches 1.. run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Swap Warn"},{text:" is set "},\
    [{score:{name:"*swap_warn",objective:"deathswap.setting"},color:"green"},"s"]\
]

#zhtw 交換警告
execute if score *language deathswap.setting matches 2 if score *swap_warn deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"交換警告"},{text:"設定為"},{text:"關閉",color:"red"}\
]
execute if score *language deathswap.setting matches 2 if score *swap_warn deathswap.setting matches 1.. run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"交換警告"},{text:"設定為"},\
    [{score:{name:"*swap_warn",objective:"deathswap.setting"},color:"green"},"秒"]\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
