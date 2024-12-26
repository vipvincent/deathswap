$scoreboard players remove arena.start deathswap.setting $(start)
execute if score arena.start deathswap.setting matches ..0 run scoreboard players set arena.start deathswap.setting 0

#6..
execute if score arena.start deathswap.setting matches 1.. if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fArena is set to start §6after "},{"score":{"name": "arena.start","objective": "deathswap.setting"},"color": "gold"},{"text": " §6rounds of swap"}]
execute if score arena.start deathswap.setting matches 1.. if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f競技場開始設定為§6交換"},{"score":{"name": "arena.start","objective": "deathswap.setting"},"color": "gold"},{"text": "§6回合後"}]

#0
execute if score arena.start deathswap.setting matches 0 if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fArena is set to §6start directly"}]
execute if score arena.start deathswap.setting matches 0 if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f競技場開始設定為§6直接開始"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update