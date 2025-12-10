scoreboard players set *arena deathswap.status 0
scoreboard players set *arena deathswap.timer 30

#bossbar
execute store result bossbar deathswap:arena value run scoreboard players get *arena deathswap.timer
bossbar set deathswap:arena max 30

bossbar set deathswap:swap_countdown visible false
bossbar set deathswap:gmchange visible false
bossbar set deathswap:random_effect visible false

bossbar set deathswap:arena visible true
execute if score *gmchange deathswap.setting matches 1 run bossbar set deathswap:gmchange visible true
execute if score *random_effect deathswap.setting matches 1 run bossbar set deathswap:random_effect visible true

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§eEnter the arena in 30 seconds!"}]
execute if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§dNote: Entering the arena will clear player effects!"}]
execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§e30秒後進入競技場！"}]
execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§d注意：進入競技場將清除當前玩家狀態效果！"}]

execute as @a at @s run playsound entity.item.break master @s ~ ~ ~
