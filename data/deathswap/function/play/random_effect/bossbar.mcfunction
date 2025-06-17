execute store result bossbar deathswap:random_effect value run scoreboard players get random_effect deathswap.timer
execute store result bossbar deathswap:random_effect max run scoreboard players get random_effect.time deathswap.setting
$execute if score language deathswap.setting matches 1 run bossbar set deathswap:random_effect name [{"text":"§fRandom Effect: "},{"translate":"effect.minecraft.$(effect)"},{"text":"§f | Next one: "},{"score":{"name":"random_effect","objective":"deathswap.timer"}},{"text":"s"}]
$execute if score language deathswap.setting matches 2 run bossbar set deathswap:random_effect name [{"text":"§f隨機效果："},{"translate":"effect.minecraft.$(effect)"},{"text":"§f | 下一個："},{"score":{"name":"random_effect","objective":"deathswap.timer"}},{"text":"s"}]
