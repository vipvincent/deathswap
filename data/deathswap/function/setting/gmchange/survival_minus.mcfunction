$scoreboard players remove gmchange.survival_time deathswap.setting $(survival)
execute if score gmchange.survival_time deathswap.setting matches ..5 run scoreboard players set gmchange.survival_time deathswap.setting 5

#6..
execute if score gmchange.survival_time deathswap.setting matches 6.. if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSurvival time has been reduced to "},{"score":{"name": "gmchange.survival_time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6s"}]
execute if score gmchange.survival_time deathswap.setting matches 6.. if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f生存模式時長已減少為"},{"score":{"name": "gmchange.survival_time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6秒"}]

#5
execute if score gmchange.survival_time deathswap.setting matches 5 if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSurvival time has been reduced to minimum of "},{"score":{"name": "gmchange.survival_time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6s"}]
execute if score gmchange.survival_time deathswap.setting matches 5 if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f生存模式時長已減少為最小值"},{"score":{"name": "gmchange.survival_time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6秒"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update