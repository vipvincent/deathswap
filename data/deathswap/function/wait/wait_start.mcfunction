scoreboard players set game deathswap.status 1
scoreboard players set wait deathswap.timer 0
scoreboard players reset @a deathswap.death
scoreboard objectives setdisplay list deathswap.health
tellraw @a {"text": "-----------------------------------------------------"}

execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fThe game is loading~"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f遊戲載入中~"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

bossbar set deathswap:wait visible true
