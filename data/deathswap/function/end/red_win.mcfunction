scoreboard players set win deathswap.status 1
tag @a[team=red,tag=!killer] add win

#text
execute if score language deathswap.setting matches 1 run title @a[team=red] title {"text": "§6Win!"}
execute if score language deathswap.setting matches 1 run title @a[team=!red] title {"text": "§cRed team wins!"}
execute if score language deathswap.setting matches 2 run title @a[team=red] title {"text": "§6獲勝！"}
execute if score language deathswap.setting matches 2 run title @a[team=!red] title {"text": "§c紅隊獲勝！"}

title @a subtitle [{"selector":"@a[team=red]"}]

tellraw @a {"text": "-----------------------------------------------------"}
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§c================================"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§cCongratulations! The red team wins!"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§c================================"}]

execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§c================================"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§c恭喜！紅隊獲勝！"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§c================================"}]

function deathswap:end/the_end
