#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/arena/prepare.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players set *arena deathswap.status 0
scoreboard players set *arena deathswap.timer 30

#sidebar
scoreboard objectives setdisplay sidebar deathswap.display.loading

#bossbar
execute store result bossbar deathswap:arena value run scoreboard players get *arena deathswap.timer
bossbar set deathswap:arena max 30
bossbar set deathswap:arena visible true

bossbar set deathswap:swap_countdown visible false

execute if score *gmchange deathswap.setting matches 0 run bossbar set deathswap:gmchange visible false
execute if score *gmchange deathswap.setting matches 1 run bossbar set deathswap:gmchange visible true
execute if score *random_effect deathswap.setting matches 0 run bossbar set deathswap:random_effect visible false
execute if score *random_effect deathswap.setting matches 1 run bossbar set deathswap:random_effect visible true

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Enter the arena in 30 seconds!",color:"yellow"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"30秒後進入競技場！",color:"yellow"}\
]

execute as @a at @s run playsound entity.item.break master @s ~ ~ ~
