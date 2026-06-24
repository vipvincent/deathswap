#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/arena/loading.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#set score
scoreboard players set *arena deathswap.status 1
scoreboard players set *arena deathswap.timer 0

#bossbar
bossbar set deathswap:gmchange visible false
bossbar set deathswap:random_effect visible false
bossbar set deathswap:arena max 200

#text
tellraw @a "-----------------------------------------------------"
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"The Arena is loading..."}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"競技場載入中..."}\
]

#sound
execute as @a at @s run playsound block.note_block.bass master @s ~ ~ ~

#effect
effect clear @a[tag=player]
effect give @a[tag=player] resistance 20 255 true 
effect give @a[tag=player] invisibility 10 255 true
effect give @a[tag=player] water_breathing 10 255 true

#still_on
execute as @a[tag=player] run function deathswap:lib/still/on

#gamemode
gamemode adventure @a[tag=player]
