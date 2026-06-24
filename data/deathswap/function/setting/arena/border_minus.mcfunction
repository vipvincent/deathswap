#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/arena/border_minus.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

$scoreboard players remove *arena.border deathswap.setting $(minus)
execute if score *arena.border deathswap.setting matches ..100 run scoreboard players set *arena.border deathswap.setting 100

#en
execute if score *arena.border deathswap.setting matches 101.. if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Arena Border"},{text:" is reduced to "},\
    [{score:{name:"*arena.border",objective:"deathswap.setting"},color:"yellow"}]\
]
execute if score *arena.border deathswap.setting matches 100 if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Arena Border"},{text:" is reduced to "},\
    {text:"minimum of "},[{score:{name:"*arena.border",objective:"deathswap.setting"},color:"yellow"}]\
]

#zhtw
execute if score *arena.border deathswap.setting matches 101.. if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"競技場邊界"},{text:"減少為"},\
    [{score:{name:"*arena.border",objective:"deathswap.setting"},color:"yellow"}]\
]
execute if score *arena.border deathswap.setting matches 100 if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"競技場邊界"},{text:"減少為"},\
    {text:"最小值"},[{score:{name:"*arena.border",objective:"deathswap.setting"},color:"yellow"}]\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
