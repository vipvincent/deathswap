#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/damage_taken/main.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#integer/decimals
scoreboard players operation *temp.integer deathswap.damage_taken = @s deathswap.damage_taken
scoreboard players operation *temp.decimals deathswap.damage_taken = @s deathswap.damage_taken
scoreboard players operation *temp.integer deathswap.damage_taken /= #operation.10 deathswap.status
scoreboard players operation *temp.decimals deathswap.damage_taken %= #operation.10 deathswap.status

#---
#show for teammates

execute if score *hurt_message deathswap.setting matches 1 if entity @s[team=solo] run function deathswap:lib/damage_taken/text {show:"@s"}

execute if score *hurt_message deathswap.setting matches 1 if entity @s[team=red] run function deathswap:lib/damage_taken/text {show:"@a[team=red]"}
execute if score *hurt_message deathswap.setting matches 1 if entity @s[team=blue] run function deathswap:lib/damage_taken/text {show:"@a[team=blue]"}
execute if score *hurt_message deathswap.setting matches 1 if entity @s[team=yellow] run function deathswap:lib/damage_taken/text {show:"@a[team=yellow]"}
execute if score *hurt_message deathswap.setting matches 1 if entity @s[team=green] run function deathswap:lib/damage_taken/text {show:"@a[team=green]"}

#show for all
execute if score *hurt_message deathswap.setting matches 2 run function deathswap:lib/damage_taken/text {show:"@a"}

#---
#reset
scoreboard players reset @s deathswap.damage_taken
scoreboard players reset *temp.integer deathswap.damage_taken
scoreboard players reset *temp.decimals deathswap.damage_taken