#arena/arena_wait
scoreboard players set *arena deathswap.status 1
scoreboard players set *arena deathswap.timer 0

#bossbar
bossbar set deathswap:gmchange visible false
bossbar set deathswap:random_effect visible false
bossbar set deathswap:arena max 200

#text
tellraw @a "-----------------------------------------------------"
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    "",{text: "Death Swap",color:gold},{text:" | ",color:gray},\
    {text:"The Arena is loading..."}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    "",{text: "Death Swap",color:gold},{text:" | ",color:gray},\
    {text:"競技場載入中..."}\
]

execute as @a at @s run playsound block.note_block.bass master @s ~ ~ ~

#effect
effect clear @a[tag=player]
effect give @a[tag=player] resistance 20 255 true 

#still_on
execute as @a[tag=player] run function deathswap:lib/still/on

#gamemode
gamemode adventure @a[tag=player]
