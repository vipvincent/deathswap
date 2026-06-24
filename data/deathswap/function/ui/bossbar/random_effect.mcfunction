#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/bossbar/random_effect.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#visable
bossbar set deathswap:random_effect players @a

#value/max
execute store result bossbar deathswap:random_effect value run scoreboard players get *random_effect deathswap.timer
execute store result bossbar deathswap:random_effect max run scoreboard players get *random_effect.time deathswap.setting

#name
$execute if score *language deathswap.setting matches 1 run bossbar set deathswap:random_effect name [\
    "Random Effect: ",{translate:"effect.minecraft.$(effect)"}," | ",\
    "Next: ",{score:{name:"*random_effect",objective:"deathswap.timer"}},"s",\
]
$execute if score *language deathswap.setting matches 2 run bossbar set deathswap:random_effect name [\
    "隨機效果：",{translate:"effect.minecraft.$(effect)"},{"text":" | "},\
    "下一個：",{score:{name:"*random_effect",objective:"deathswap.timer"}},"秒",\
]
