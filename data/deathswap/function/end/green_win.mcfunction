scoreboard players set win deathswap.status 4
tag @a[team=green,tag=!killer] add win

#text
execute if score language deathswap.setting matches 1 run title @a[team=green] title {"text": "§6Win!"}
execute if score language deathswap.setting matches 1 run title @a[team=!green] title {"text": "§aGreen team wins!"}
execute if score language deathswap.setting matches 2 run title @a[team=green] title {"text": "§6獲勝！"}
execute if score language deathswap.setting matches 2 run title @a[team=!green] title {"text": "§a綠隊獲勝！"}

title @a subtitle [{"selector":"@a[team=green]"}]

tellraw @a {"text": "-----------------------------------------------------"}
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§a================================"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§aCongratulations! The green team wins!"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§a================================"}]

execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§a================================"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§a恭喜！綠隊獲勝！"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§a================================"}]

function deathswap:end/the_end
