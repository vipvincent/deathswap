$scoreboard players remove random_effect.time deathswap.setting $(time)
execute if score random_effect.time deathswap.setting matches ..5 run scoreboard players set random_effect.time deathswap.setting 5

#6..
execute if score random_effect.time deathswap.setting matches 6.. if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fRandom Effect interval has been reduced to "},{"score":{"name": "random_effect.time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6s"}]
execute if score random_effect.time deathswap.setting matches 6.. if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f隨機效果間隔已減少為"},{"score":{"name": "random_effect.time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6秒"}]

#5
execute if score random_effect.time deathswap.setting matches 5 if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fRandom Effect interval has been reduced to minimum of "},{"score":{"name": "random_effect.time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6s"}]
execute if score random_effect.time deathswap.setting matches 5 if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f隨機效果間隔已減少為最小值"},{"score":{"name": "random_effect.time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6秒"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update