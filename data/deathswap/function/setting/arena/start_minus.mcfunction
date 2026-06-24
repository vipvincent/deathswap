#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/arena/start_minus.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

$scoreboard players remove *arena.start deathswap.setting $(minus)
execute if score *arena.start deathswap.setting matches ..0 run scoreboard players set *arena.start deathswap.setting 0

#en
execute if score *arena.start deathswap.setting matches 1.. if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Arena Start"},{text:" is set "},\
    [{text:"after ",color:"yellow"},{score:{name:"*arena.start",objective:"deathswap.setting"}}," swap"]\
]
execute if score *arena.start deathswap.setting matches 0 if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Arena Start"},{text:" is set "},\
    [{text:"start directly",color:"yellow"}]\
]

#zhtw
execute if score *arena.start deathswap.setting matches 1.. if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"競技場開始"},{text:"設定為"},\
    [{text:"交換",color:"yellow"},{score:{name:"*arena.start",objective:"deathswap.setting"}},"次後"]\
]
execute if score *arena.start deathswap.setting matches 0 if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"競技場開始"},{text:"設定為"},\
    [{text:"直接開始",color:"yellow"}]\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
