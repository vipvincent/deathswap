#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/arena/border_add.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

$scoreboard players add *arena.border deathswap.setting $(add)
execute if score *arena.border deathswap.setting matches 1000.. run scoreboard players set *arena.border deathswap.setting 1000

#en
execute if score *arena.border deathswap.setting matches ..999 if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Arena Border"},{text:" is increased to "},\
    [{score:{name:"*arena.border",objective:"deathswap.setting"},color:"yellow"}]\
]
execute if score *arena.border deathswap.setting matches 1000 if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Arena Border"},{text:" is increased to "},\
    {text:"maximum of "},[{score:{name:"*arena.border",objective:"deathswap.setting"},color:"yellow"}]\
]

#zhtw
execute if score *arena.border deathswap.setting matches ..999 if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"競技場邊界"},{text:"增加為"},\
    [{score:{name:"*arena.border",objective:"deathswap.setting"},color:"yellow"}]\
]
execute if score *arena.border deathswap.setting matches 1000 if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"競技場邊界"},{text:"增加為"},\
    {text:"最大值"},[{score:{name:"*arena.border",objective:"deathswap.setting"},color:"yellow"}]\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
