$scoreboard players add random_effect.time deathswap.setting $(time)
execute if score random_effect.time deathswap.setting matches 50000.. run scoreboard players set random_effect.time deathswap.setting 50000

#..49999
execute if score random_effect.time deathswap.setting matches ..49999 if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fRandom Effect interval has been increased to "},{"score":{"name": "random_effect.time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6s"}]
execute if score random_effect.time deathswap.setting matches ..49999 if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f隨機效果間隔已增加為"},{"score":{"name": "random_effect.time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6秒"}]

#50000
execute if score random_effect.time deathswap.setting matches 50000 if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fRandom Effect interval has been increased to maximum of "},{"score":{"name": "random_effect.time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6s"}]
execute if score random_effect.time deathswap.setting matches 50000 if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f隨機效果間隔已增加為最大值"},{"score":{"name": "random_effect.time","objective": "deathswap.setting"},"color": "gold"},{"text": "§6秒"}]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update