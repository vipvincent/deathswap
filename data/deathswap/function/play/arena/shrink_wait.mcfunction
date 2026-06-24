#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/arena/shrink_wait.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#complete shrink
execute if score *arena.shrink deathswap.status matches 1 if score *language deathswap.setting matches 1 run tellraw @a [{storage:"deathswap:ui",nbt:"text.prefix",interpret:true},{"text": "The arena has been reduced to "},[{"score": {"name": "*arena.border","objective": "deathswap.status"},"color":"gold"},{"text": "x"},{"score": {"name": "*arena.border","objective": "deathswap.status"}}]]
execute if score *arena.shrink deathswap.status matches 1 if score *language deathswap.setting matches 2 run tellraw @a [{storage:"deathswap:ui",nbt:"text.prefix",interpret:true},{"text": "競技場完成縮圈至"},[{"score": {"name": "*arena.border","objective": "deathswap.status"},"color":"gold"},{"text": "x"},{"score": {"name": "*arena.border","objective": "deathswap.status"}}]]

#shrink end 
execute if score *arena.border deathswap.status matches ..50 run return run function deathswap:play/arena/shrink_end

#reset
scoreboard players set *arena.shrink deathswap.status 0 
scoreboard players set *arena deathswap.timer 30
bossbar set deathswap:arena max 30

#next
execute if score *arena.border deathswap.status matches 51..100 run scoreboard players set *arena.border deathswap.status 50
execute if score *arena.border deathswap.status matches 101.. run scoreboard players remove *arena.border deathswap.status 100

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"After 30s, the arena will begin to shrink to "},\
    {score:{name:"*arena.border",objective:"deathswap.status"},color:"yellow"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"30秒後，競技場將會開始縮圈至"},\
    {score:{name:"*arena.border",objective:"deathswap.status"},color:"yellow"}\
]
