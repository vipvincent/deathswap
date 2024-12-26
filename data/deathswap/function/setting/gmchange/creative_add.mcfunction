$scoreboard players add gmchange.creative_time deathswap.setting $(creative)

execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fCreative time has been increased to "},{"score":{"name": "gmchange.creative_time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6s"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f創造模式時長已增加為"},{"score":{"name": "gmchange.creative_time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6秒"}]
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update