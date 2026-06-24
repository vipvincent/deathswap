#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/killer/quantity.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *killer.quantity deathswap.setting 1
execute if score *killer.quantity deathswap.setting matches 2 run scoreboard players set *killer.quantity deathswap.setting 0

#en
execute if score *language deathswap.setting matches 1 if score *killer.quantity deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Number of killers"},{text:" is set "},{text:"just one",color:"yellow"}\
]
execute if score *language deathswap.setting matches 1 if score *killer.quantity deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Number of killers"},{text:" is set "},{text:"one per team",color:"yellow"}\
]

#zhtw
execute if score *language deathswap.setting matches 2 if score *killer.quantity deathswap.setting matches 0 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"殺手數量"},{text:"設定為"},{text:"僅一個",color:"yellow"}\
]
execute if score *language deathswap.setting matches 2 if score *killer.quantity deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"殺手數量"},{text:"設定為"},{text:"每隊一個",color:"yellow"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
