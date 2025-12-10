#damage taken

#integer/decimals
scoreboard players operation @s deathswap.damage_taken.integer = @s deathswap.damage_taken
scoreboard players operation @s deathswap.damage_taken.decimals = @s deathswap.damage_taken
scoreboard players operation @s deathswap.damage_taken.integer /= #operation.10 deathswap.status
scoreboard players operation @s deathswap.damage_taken.decimals %= #operation.10 deathswap.status

#tip
execute if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"selector":"@s"},{text:" is taking "},[{"score":{"name":"@s","objective":"deathswap.damage_taken.integer"},"color":"light_purple"},{"text":"."},{"score":{"name":"@s","objective":"deathswap.damage_taken.decimals"}}],{"text":" damage!"}]
execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"selector":"@s"},{text:" 正在受到 "},[{"score":{"name":"@s","objective":"deathswap.damage_taken.integer"},"color":"light_purple"},{"text":"."},{"score":{"name":"@s","objective":"deathswap.damage_taken.decimals"}}],{"text":" 點傷害！"}]

#reset
scoreboard players reset @s deathswap.damage_taken
scoreboard players reset @s deathswap.damage_taken.integer
scoreboard players reset @s deathswap.damage_taken.decimals