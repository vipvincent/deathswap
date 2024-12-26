$scoreboard players add arena.border deathswap.setting $(border)
execute if score arena.border deathswap.setting matches 1000.. run scoreboard players set arena.border deathswap.setting 1000

#..999
execute if score arena.border deathswap.setting matches ..999 if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fArena Border increased to "},{"score":{"name": "arena.border","objective": "deathswap.setting"},"color": "gold"},{"text": "§6x"},{"score":{"name": "arena.border","objective": "deathswap.setting"},"color": "gold"}]
execute if score arena.border deathswap.setting matches ..999 if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f競技場邊界增加為"},{"score":{"name": "arena.border","objective": "deathswap.setting"},"color": "gold"},{"text": "§6x"},{"score":{"name": "arena.border","objective": "deathswap.setting"},"color": "gold"}]

#1000
execute if score arena.border deathswap.setting matches 1000 if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fArena Border increased to maximum of "},{"score":{"name": "arena.border","objective": "deathswap.setting"},"color": "gold"},{"text": "§6x"},{"score":{"name": "arena.border","objective": "deathswap.setting"},"color": "gold"}]
execute if score arena.border deathswap.setting matches 1000 if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f競技場邊界增加為最大值"},{"score":{"name": "arena.border","objective": "deathswap.setting"},"color": "gold"},{"text": "§6x"},{"score":{"name": "arena.border","objective": "deathswap.setting"},"color": "gold"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update