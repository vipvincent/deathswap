$scoreboard players remove gmchange.creative_time deathswap.setting $(creative)
execute if score gmchange.creative_time deathswap.setting matches ..1 run scoreboard players set gmchange.creative_time deathswap.setting 1

#2..
execute if score gmchange.creative_time deathswap.setting matches 2.. if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fCreative time has been reduced to "},{"score":{"name": "gmchange.creative_time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6s"}]
execute if score gmchange.creative_time deathswap.setting matches 2.. if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f創造模式時長已減少為"},{"score":{"name": "gmchange.creative_time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6秒"}]
#1
execute if score gmchange.creative_time deathswap.setting matches 1 if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fCreative time has been reduced to minimum of "},{"score":{"name": "gmchange.creative_time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6s"}]
execute if score gmchange.creative_time deathswap.setting matches 1 if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f創造模式時長已減少為最小值"},{"score":{"name": "gmchange.creative_time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6秒"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update