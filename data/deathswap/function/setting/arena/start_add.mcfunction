#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/arena/start_add.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

$scoreboard players add *arena.start deathswap.setting $(add)

#en
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Arena Start"},{text:" is set "},\
    [{text:"after ",color:"yellow"},{score:{name:"*arena.start",objective:"deathswap.setting"}}," swap"]\
]

#zhtw
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"競技場開始"},{text:"設定為"},\
    [{text:"交換",color:"yellow"},{score:{name:"*arena.start",objective:"deathswap.setting"}},"次後"]\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
