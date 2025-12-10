scoreboard players set *arena deathswap.status 1
scoreboard players set *arena deathswap.timer 0

#bossbar
bossbar set deathswap:gmchange visible false
bossbar set deathswap:random_effect visible false
bossbar set deathswap:arena max 200

#text
tellraw @a {"text": "-----------------------------------------------------"}
execute if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fLoading arena~"}]
execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f正在載入競技場~"}]

execute as @a at @s run playsound block.note_block.bass master @s ~ ~ ~

#effect
effect clear @a[tag=player]
effect give @a[tag=player] resistance 20 255 true 

#still_on
execute as @a[tag=player] run function deathswap:lib/still/on
