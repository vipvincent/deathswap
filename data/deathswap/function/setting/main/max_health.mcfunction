#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/main/max_health.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *max_health deathswap.setting 1
execute if score *max_health deathswap.setting matches 2 run scoreboard players set *max_health deathswap.setting 10
execute if score *max_health deathswap.setting matches 11 run scoreboard players set *max_health deathswap.setting 20
execute if score *max_health deathswap.setting matches 21 run scoreboard players set *max_health deathswap.setting 30
execute if score *max_health deathswap.setting matches 31 run scoreboard players set *max_health deathswap.setting 40
execute if score *max_health deathswap.setting matches 41 run scoreboard players set *max_health deathswap.setting 50
execute if score *max_health deathswap.setting matches 51 run scoreboard players set *max_health deathswap.setting 60
execute if score *max_health deathswap.setting matches 61 run scoreboard players set *max_health deathswap.setting 1

#en
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Max Health"},{text:" is set "},\
    [{score:{name:"*max_health",objective:"deathswap.setting"},color:"yellow"},"point"]\
]

#zhtw
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"最大血量"},{text:"設定為"},\
    [{score:{name:"*max_health",objective:"deathswap.setting"},color:"yellow"},"點"]\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
