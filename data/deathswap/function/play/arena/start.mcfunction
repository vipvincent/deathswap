#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/arena/start.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#bossbar
execute if score *arena.shrink deathswap.setting matches 0 run bossbar set deathswap:arena visible false
bossbar set deathswap:swap_countdown visible true
execute if score *gmchange deathswap.setting matches 1 run bossbar set deathswap:gmchange visible true
execute if score *random_effect deathswap.setting matches 1 run bossbar set deathswap:random_effect visible true

#gmchange
execute if score *gmchange deathswap.setting matches 1 run scoreboard players set *gmchange deathswap.status 0
execute if score *gmchange deathswap.setting matches 1 run scoreboard players operation *gmchange.time deathswap.timer = *gmchange.survival_time deathswap.setting

#collisionrule
function deathswap:team/collisionrule/use_setting

#gamerule
gamerule minecraft:max_entity_cramming 24

#still_off
execute as @a run function deathswap:lib/still/off

#gamemode
gamemode survival @a[tag=player]

#status
scoreboard players set *arena deathswap.status 2

#sidebar
scoreboard objectives setdisplay sidebar deathswap.display.play_status

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"The arena begins now!"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"競技場現在開始！"}\
]

#sound
execute as @a at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~

#shrink 
execute store result score *arena.border deathswap.status run scoreboard players get *arena.border deathswap.setting
execute if score *arena.shrink deathswap.setting matches 1 run function deathswap:play/arena/shrink_wait

#random_effect
execute if score *random_effect deathswap.setting matches 1 run function deathswap:play/random_effect/random