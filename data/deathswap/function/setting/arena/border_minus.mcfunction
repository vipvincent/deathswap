$scoreboard players remove arena.border deathswap.setting $(border)
execute if score arena.border deathswap.setting matches ..100 run scoreboard players set arena.border deathswap.setting 100

#101
execute if score arena.border deathswap.setting matches 101.. if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fArena Border reduced to "},{"score":{"name": "arena.border","objective": "deathswap.setting"},"color": "gold"},{"text": "§6x"},{"score":{"name": "arena.border","objective": "deathswap.setting"},"color": "gold"}]
execute if score arena.border deathswap.setting matches 101.. if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f競技場邊界減少為"},{"score":{"name": "arena.border","objective": "deathswap.setting"},"color": "gold"},{"text": "§6x"},{"score":{"name": "arena.border","objective": "deathswap.setting"},"color": "gold"}]

#100
execute if score arena.border deathswap.setting matches 100 if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fArena Border reduced to minimum of "},{"score":{"name": "arena.border","objective": "deathswap.setting"},"color": "gold"},{"text": "§6x"},{"score":{"name": "arena.border","objective": "deathswap.setting"},"color": "gold"}]
execute if score arena.border deathswap.setting matches 100 if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f競技場邊界減少為最小值"},{"score":{"name": "arena.border","objective": "deathswap.setting"},"color": "gold"},{"text": "§6x"},{"score":{"name": "arena.border","objective": "deathswap.setting"},"color": "gold"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update