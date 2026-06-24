#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/arena/shrink_start.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players set *arena.shrink deathswap.status 1 
scoreboard players set *arena deathswap.timer 0

#25
execute if score *arena.border deathswap.status matches 25 in minecraft:overworld run worldborder set 25 30s
execute if score *arena.border deathswap.status matches 25 in minecraft:the_nether run worldborder set 25 30s
execute if score *arena.border deathswap.status matches 25 in minecraft:the_end run worldborder set 25 30s
#50
execute if score *arena.border deathswap.status matches 50 in minecraft:overworld run worldborder set 50 30s
execute if score *arena.border deathswap.status matches 50 in minecraft:the_nether run worldborder set 50 30s
execute if score *arena.border deathswap.status matches 50 in minecraft:the_end run worldborder set 50 30s
#100..
execute if score *arena.border deathswap.status matches 100.. in minecraft:overworld run worldborder add -100 30s
execute if score *arena.border deathswap.status matches 100.. in minecraft:the_nether run worldborder add -100 30s
execute if score *arena.border deathswap.status matches 100.. in minecraft:the_end run worldborder add -100 30s


#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"The arena is now starting shrink to "},\
    {score:{name:"*arena.border",objective:"deathswap.status"},color:"yellow"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"競技場現在開始縮圈至"},\
    {score:{name:"*arena.border",objective:"deathswap.status"},color:"yellow"}\
]
