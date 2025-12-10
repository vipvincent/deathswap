scoreboard players set *gmchange deathswap.status 0
scoreboard players operation *gmchange.time deathswap.timer = *gmchange.survival_time deathswap.setting

title @a title ""
execute if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§aSurvival"}
execute if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§a生存模式"}

execute as @a at @s run playsound block.note_block.hat master @s ~ ~ ~