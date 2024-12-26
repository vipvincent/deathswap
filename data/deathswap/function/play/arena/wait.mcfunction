scoreboard players set arena deathswap.status 1
scoreboard players set arena deathswap.timer 0

#gmchange
execute if score gmchange deathswap.setting matches 1 run scoreboard players set gmchange deathswap.status 0
execute if score gmchange deathswap.setting matches 1 run scoreboard players operation gmchange deathswap.timer = gmchange.survival_time deathswap.setting

#bossbar
bossbar set deathswap:gmchange visible false
bossbar set deathswap:arena max 200

#text
tellraw @a {"text": "---------------------------------------------------"}
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fLoading arena~"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f正在載入競技場~"}]

execute as @a at @s run playsound block.note_block.bass master @s ~ ~ ~

#attribute/effect
execute as @a[tag=player] run attribute @s minecraft:jump_strength base set 0.0
execute as @a[tag=player] run attribute @s minecraft:movement_speed base set 0.0
execute as @a[tag=player] run attribute @s minecraft:block_interaction_range base set 0.0
execute as @a[tag=player] run attribute @s minecraft:entity_interaction_range base set 0.0
effect give @a[tag=player] resistance 20 255 true 


