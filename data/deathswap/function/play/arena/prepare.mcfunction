scoreboard players set arena deathswap.status 0
scoreboard players set arena deathswap.timer 30

execute store result bossbar deathswap:arena value run scoreboard players get arena deathswap.timer
bossbar set deathswap:arena max 30
bossbar set deathswap:arena visible true
bossbar set deathswap:swap_countdown visible false
bossbar set deathswap:gmchange visible false
execute if score gmchange deathswap.setting matches 1 run bossbar set deathswap:gmchange visible true

#text
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§eEnter the arena in 30 seconds!"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§e30秒後進入競技場！"}]

execute as @a at @s run playsound entity.item.break master @s ~ ~ ~
