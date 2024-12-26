scoreboard players set win deathswap.status 3
tag @a[team=yellow,tag=!killer] add win

#text
execute if score language deathswap.setting matches 1 run title @a[team=yellow] title {"text": "§6Win!"}
execute if score language deathswap.setting matches 1 run title @a[team=!yellow] title {"text": "§eYellow team wins!"}
execute if score language deathswap.setting matches 2 run title @a[team=yellow] title {"text": "§6獲勝！"}
execute if score language deathswap.setting matches 2 run title @a[team=!yellow] title {"text": "§e黃隊獲勝！"}

title @a subtitle [{"selector":"@a[team=yellow]"}]

tellraw @a {"text": "---------------------------------------------------"}
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§e================================"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§eCongratulations! The yellow team wins!"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§e================================"}]

execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§e================================"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§e恭喜！黃隊獲勝！"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§e================================"}]

function deathswap:end/the_end
